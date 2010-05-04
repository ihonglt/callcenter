//
// Network.h
//

#if !defined(AFX_NETWORK_H__0C616F1D_3108_424C_AA95_7FD3135A3AD7__INCLUDED_)
#define AFX_NETWORK_H__0C616F1D_3108_424C_AA95_7FD3135A3AD7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Channel.h"

class CNetwork
{
// Construction
public:
	CNetwork();
	virtual ~CNetwork();

// Attributes
public:
	CEvent			m_pWakeup;
	CMutex			m_pSection;
	BOOL			m_bConnected;
protected:
	HANDLE			m_hThread;
	volatile BOOL	m_bThread;
	CMapStringToPtr	m_pList;

// Operations
public:
	BOOL			Connect();
	void			Disconnect();
	BOOL			IsConnected() const;
	int				IsWellConnected() const;
public:
	BOOL			RestartJob(LPCTSTR xJobId);
	BOOL			KillJob(LPCTSTR xJobId);
public:
	CChannel*		FindChannel(LPCTSTR xUserId) const;
	CChannel*		SetChannel(CChannel* pChannel);
	void			Clear();
protected:
	void			StartThread();
	void			StopThread();
protected:
	virtual	BOOL	OnRun();
	virtual BOOL	RunNeighbours();
	static	UINT	ThreadStart(LPVOID pParam);
	
	friend class CChannel;
};

extern CNetwork Network;

#endif // !defined(AFX_NETWORK_H__0C616F1D_3108_424C_AA95_7FD3135A3AD7__INCLUDED_)
