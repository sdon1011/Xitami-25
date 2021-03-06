!-----------------------------------------------------------------------------
!                                                                            !
!   fxtest1.l - Test program 1                                               !
!                                                                            !
!   Copyright (c) 1991-2003 iMatix Corporation                               !
!                                                                            !
!   ------------------ GPL Licensed Source Code ------------------           !
!   iMatix makes this software available under the GNU General               !
!   Public License (GPL) license for open source projects.  For              !
!   details of the GPL license please see www.gnu.org or read the            !
!   file license.gpl provided in this package.                               !
!                                                                            !
!   This program is free software; you can redistribute it and/or            !
!   modify it under the terms of the GNU General Public License as           !
!   published by the Free Software Foundation; either version 2 of           !
!   the License, or (at your option) any later version.                      !
!                                                                            !
!   This program is distributed in the hope that it will be useful,          !
!   but WITHOUT ANY WARRANTY; without even the implied warranty of           !
!   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            !
!   GNU General Public License for more details.                             !
!                                                                            !
!   You should have received a copy of the GNU General Public                !
!   License along with this program in the file 'license.gpl'; if            !
!   not, write to the Free Software Foundation, Inc., 59 Temple              !
!   Place - Suite 330, Boston, MA 02111-1307, USA.                           !
!                                                                            !
!   You can also license this software under iMatix's General Terms          !
!   of Business (GTB) for commercial projects.  If you have not              !
!   explicitly licensed this software under the iMatix GTB you may           !
!   only use it under the terms of the GNU General Public License.           !
!                                                                            !
!   For more information, send an email to info@imatix.com.                  !
!   --------------------------------------------------------------           !
!-----------------------------------------------------------------------------
-schema=lrstudio.c

After-Init:
    (--) Ok                                 -> Showing-Screen
          + Prepare-For-Output-Only
    (--) Error                              ->
          + Terminate-The-Program

Showing-Screen:
    (--) Create                             -> Creating-Record
          + Prepare-For-Input
    (--) Secure                             ->                
          + Set-Secure-Mode   
    (--) Insecure                           ->                    
          + Set-Insecure-Mode 
    (--) Return                             ->
          + Terminate-The-Program
    (--) Enter                              ->
          +
    (--) Loop                               ->
          + Simulate-Program-Loop
    (--) Test-2                             ->
          + Call-Program-Test-2
          + After-Calling-Test-2

Creating-Record:
    (--) Cancel                             -> Showing-Screen
          + Prepare-For-Output-Only
    (--) Test-2                             ->
          + Call-Program-Test-2
          + After-Calling-Test-2
    (--) Test-3                             ->
          + Call-Program-Test-3
          + After-Calling-Test-3
    (--) Return                             ->
          + Terminate-The-Program
    (--) Enter                              ->
          +
