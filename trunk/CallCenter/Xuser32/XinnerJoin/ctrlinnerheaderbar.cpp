//
// CtrlInnerHeaderBar.cpp
//

#include "stdafx.h"
#include "Xuser32.h"
#include "CoolInterface.h"
#include "CtrlInnerHeaderBar.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

IMPLEMENT_DYNAMIC(CInnerHeaderBar, CCoolBarCtrl)
BEGIN_MESSAGE_MAP(CInnerHeaderBar, CCoolBarCtrl)
	//{{AFX_MSG_MAP(CInnerHeaderBar)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//////////////////////////////////////////////////////////////////////
// CInnerHeaderBar construction

CInnerHeaderBar::CInnerHeaderBar()
{
}

CInnerHeaderBar::~CInnerHeaderBar()
{
}

/////////////////////////////////////////////////////////////////////////////
// CInnerHeaderBar operations

void CInnerHeaderBar::SetCaption(LPCTSTR pszCaption, COLORREF crCmdText)
{
	SetWindowText( pszCaption );
	m_crCmdText	= crCmdText;
	
	Invalidate();
}

void CInnerHeaderBar::SetIcon(HICON hIcon)
{
	CWnd::SetIcon( hIcon, FALSE );
	Invalidate();
}

/////////////////////////////////////////////////////////////////////////////
// CInnerHeaderBar message handlers

void CInnerHeaderBar::PrepareRect(CRect* pRect) const
{
	CCoolBarCtrl::PrepareRect( pRect );
	pRect->left -= 10;
	if ( m_czLast.cx < pRect->Width() ) pRect->left = pRect->right - m_czLast.cx;
	pRect->left += 10;
	pRect->bottom --;
}

void CInnerHeaderBar::DoPaint(CDC* pDC, CRect& rcBar, BOOL bTransparent)
{
	pDC->FillSolidRect( rcBar.left, rcBar.bottom - 1, rcBar.Width(), 1,
		GetSysColor( COLOR_3DSHADOW ) );
	rcBar.bottom --;

	if ( m_czLast.cx < rcBar.Width() - 22 )
	{
		CRect rcHeader( &rcBar );
		rcHeader.right = rcBar.left = rcBar.right - m_czLast.cx;
		PaintHeader( pDC, rcHeader, bTransparent );
	}

	CCoolBarCtrl::DoPaint( pDC, rcBar, bTransparent );
}

void CInnerHeaderBar::PaintHeader(CDC* pDC, CRect& rcBar, BOOL bTransparent)
{
	CString strCaption;
	GetWindowText( strCaption );
	
	CFont* pOldFont = (CFont*)pDC->SelectObject( &CoolInterface.m_fntBold );
	CSize szText = pDC->GetTextExtent( strCaption );
	
	pDC->SetTextColor( m_crCmdText );
	pDC->SetBkColor( CoolInterface.m_crMidtone );

	int nMiddle = ( rcBar.top + rcBar.bottom ) / 2;

	if ( bTransparent )
	{
		DrawIconEx( pDC->GetSafeHdc(), rcBar.left + 4, nMiddle - 8,
			GetIcon( FALSE ), 16, 16, 0, CBrush(CoolInterface.m_crMidtone), DI_NORMAL );
		
		pDC->SetBkMode( TRANSPARENT );
		pDC->ExtTextOut( rcBar.left + 22, nMiddle - szText.cy / 2,
			ETO_CLIPPED, &rcBar, strCaption, NULL );
	}
	else
	{
		pDC->SetBkMode( OPAQUE );
		
		DrawIconEx( pDC->GetSafeHdc(), rcBar.left + 4, nMiddle - 8,
			GetIcon( FALSE ), 16, 16, 0, CBrush(CoolInterface.m_crMidtone), DI_NORMAL );
		
		pDC->ExcludeClipRect( rcBar.left + 4, nMiddle - 8, rcBar.left + 20, nMiddle + 8 );
		
		pDC->FillSolidRect( rcBar.left, rcBar.top, 20, rcBar.Height(),
			CoolInterface.m_crMidtone );

		rcBar.left += 20;
		pDC->ExtTextOut( rcBar.left + 2, nMiddle - szText.cy / 2,
			ETO_CLIPPED|ETO_OPAQUE, &rcBar, strCaption, NULL );
		rcBar.left -= 20;
	}

	pDC->SelectObject( pOldFont );
}
