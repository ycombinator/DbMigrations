#   Copyright 2011 Shaunak Kashyap
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# Log levels
LOG_LEVEL_FATAL=40
LOG_LEVEL_WARNING=30
LOG_LEVEL_INFO=20
LOG_LEVEL_DEBUG=10

# Utility functions
LOG_FATAL()   { if [ $LOG_LEVEL -le $LOG_LEVEL_FATAL   ]; then echo "[FATAL]   $@" >&2; fi }
LOG_WARNING() { if [ $LOG_LEVEL -le $LOG_LEVEL_WARNING ]; then echo "[WARNING] $@" >&2; fi }
LOG_INFO()    { if [ $LOG_LEVEL -le $LOG_LEVEL_INFO    ]; then echo "[INFO]    $@" >&2; fi }
LOG_DEBUG()   { if [ $LOG_LEVEL -le $LOG_LEVEL_DEBUG   ]; then echo "[DEBUG]   $@" >&2; fi }
