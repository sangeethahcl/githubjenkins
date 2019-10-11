{{- $domain := default "cluster.local" .Values.ric.cluster.domain }}
{{- $ricpltNS := include "common.namespace.platform" . }}
{{- $xappNS := include "common.namespace.xapp" . }}
{{- $ricplt := printf "%s.svc.%s" $ricpltNS $domain }}
{{- $release := default "r1" .Values.ric.robot.release }}
#
*** Settings ***
Documentation        store all properties that can change or are used in multiple places here
...                  format is all caps with underscores between words and prepended with GLOBAL
...                  make sure you prepend them with GLOBAL so that other files can easily see it is from this file.


*** Variables ***
&{GLOBAL_RICPLT_COMPONENTS}           {{- range keys .Values.ric.platform.components }}
...                                   {{.}}={{include (printf "common.deploymentname.%s" .) $}}
                                      {{- end }}
&{GLOBAL_RICPLT_XAPPS}                {{- range keys .Values.ric.xapp }}
...                                   {{.}}={{ printf "%s-%s" $xappNS . }}
                                      {{- end }}
#
${GLOBAL_APPLICATION_ID}              {{ default "r0" .Values.ric.robot.release | printf "nanobot-%s" }}
${GLOBAL_BUILD_NUMBER}                {{ default "0" .Values.ric.platform.build  }}
${GLOBAL_RICPLT_NAMESPACE}            {{ $ricpltNS  }}
#
${GLOBAL_APPMGR_SERVER_PROTOCOL}      {{ default "http" .Values.ric.platform.components.appmgr.protocol  }}
${GLOBAL_INJECTED_APPMGR_IP_ADDR}     {{ printf "%s.%s" (include "common.servicename.appmgr.http" .) $ricplt  }}
${GLOBAL_APPMGR_SERVER_PORT}          {{ include "common.serviceport.appmgr.http" .  }}
${GLOBAL_INJECTED_APPMGR_USER}        {{ .Values.ric.platform.components.appmgr.user  }}
${GLOBAL_INJECTED_APPMGR_PASSWORD}    {{ .Values.ric.platform.components.appmgr.password  }}
#
${GLOBAL_E2MGR_SERVER_PROTOCOL}       {{ default "http" .Values.ric.platform.components.e2mgr.protocol  }}
${GLOBAL_INJECTED_E2MGR_IP_ADDR}      {{ printf "%s.%s" (include "common.servicename.e2mgr.http" .) $ricplt  }}
${GLOBAL_E2MGR_SERVER_PORT}           {{ include "common.serviceport.e2mgr.http" .  }}
${GLOBAL_INJECTED_E2MGR_USER}         {{ .Values.ric.platform.components.e2mgr.user  }}
${GLOBAL_INJECTED_E2MGR_PASSWORD}     {{ .Values.ric.platform.components.e2mgr.password  }}
#
${GLOBAL_RTMGR_SERVER_PROTOCOL}       {{ default "http" .Values.ric.platform.components.rtmgr.protocol  }}
${GLOBAL_INJECTED_RTMGR_IP_ADDR}      {{ printf "%s.%s" (include "common.servicename.rtmgr.http" .) $ricplt  }}
${GLOBAL_RTMGR_SERVER_PORT}           {{ include "common.serviceport.e2mgr.http" .  }}
${GLOBAL_INJECTED_RTMGR_USER}         {{ .Values.ric.platform.components.rtmgr.user  }}
${GLOBAL_INJECTED_RTMGR_PASSWORD}     {{ .Values.ric.platform.components.rtmgr.password  }}
#
${GLOBAL_INJECTED_DBAAS_IP_ADDR}      {{ printf "%s.%s" (include "common.servicename.dbaas.tcp" .) $ricplt  }}
${GLOBAL_DBAAS_SERVER_PORT}           {{ include "common.serviceport.dbaas.tcp" .  }}