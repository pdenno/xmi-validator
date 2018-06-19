# -*- Mode: RPM-SPEC -*-
# Note that this is NOT a relocatable package

%define ver		2.4.0
%define rel		1

# Turn off executable stripping
%define __spec_install_post /usr/lib/rpm/brp-compress ||:

Summary:	Express Engine is an application for validating STEP data populations.
Name:		expresso
Icon:		expresso48.xpm
Version:	%ver
Release:	%rel
Copyright:	none
Group:		Development/Languages
Source:		http://prdownloads.sf.net/exp-engine/expresso-%{version}.tar.gz
URL:		http://exp-engine.sourceforge.net/
Vendor:		Express Engine Team
Packager:	Craig Lanning <clanning@users.sourceforge.net>
Prefix:		/usr
BuildRoot:	/var/tmp/expresso-%{PACKAGE_VERSION}-root
Obsoletes:	expresso
Requires:	libXm.so.2
Docdir:		%{prefix}/share/doc

%description
The Express Engine package contains an application to validate EXPRESS
information model data populations and to execute EXPRESS-X maps and
views.

Updates are available at http://exp-engine.sourceforge.net/

%prep
%setup

%build
lispworks -init linux/compile
lispworks -init lw/deliver

%install
rm -rf $RPM_BUILD_ROOT
make prefix=$RPM_BUILD_ROOT%{prefix} install

%clean
rm -rf $RPM_BUILD_ROOT

#%post -p /sbin/ldconfig
#%postun -p /sbin/ldconfig

%files
%defattr(-, root, root)

%doc todo.txt
%{prefix}/bin/expresso
%{prefix}/share/expresso/patches/
%{prefix}/share/expresso/init/preferences.lsp
#%{prefix}/share/expresso/init/expresso.conf
#%config %{prefix}/share/expresso/private-patches/preferences.lsp
#%{prefix}/share/expresso/schemata/

# GNOME stuff
%{prefix}/share/gnome/apps/Development/expresso.desktop
%{prefix}/share/pixmaps/expresso.png

# KDE stuff
%{prefix}/share/applnk/Applications/expresso.kdelnk
%{prefix}/share/icons/expresso.xpm
%{prefix}/share/icons/large/expresso.xpm
