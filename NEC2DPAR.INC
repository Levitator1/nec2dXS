! Change some settings to assume it's not 1973 or whatever -JAB
! Have to figure there's lots of static allocation going on here, so don't go too crazy

      PARAMETER (MAXSEG=4950)	! Max number of segments 	(Windows-95 <= 4950)
      PARAMETER (MAXMAT=4950)	! max nr of 'in-core' alloc.	(MAXMAT <= MAXSEG)

      PARAMETER (LOADMX=maxseg/10)	! Max number of LD cards
      PARAMETER (NSMAX=64)	! Max number of EX cards
      PARAMETER (NETMX=64)	! Max number of segs connected to NT/TL 

      PARAMETER (JMAX=60)	! Max segments connected to a single segment or junction
