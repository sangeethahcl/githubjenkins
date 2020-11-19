/*****************************************************************************
#                                                                            *
# Copyright 2019 AT&T Intellectual Property                                  *
#                                                                            *
# Licensed under the Apache License, Version 2.0 (the "License");            *
# you may not use this file except in compliance with the License.           *
# You may obtain a copy of the License at                                    *
#                                                                            *
#      http://www.apache.org/licenses/LICENSE-2.0                            *
#                                                                            *
# Unless required by applicable law or agreed to in writing, software        *
# distributed under the License is distributed on an "AS IS" BASIS,          *
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   *
# See the License for the specific language governing permissions and        *
# limitations under the License.                                             *
#                                                                            *
******************************************************************************/

/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "X2AP-PDU-Contents"
 * 	found in "../../asnFiles/X2AP-PDU-Contents.asn"
 * 	`asn1c -fcompound-names -fincludes-quoted -fno-include-deps -findirect-choice -gen-PER -no-gen-OER -D.`
 */

#ifndef	_RespondingNodeType_EndcX2Setup_H_
#define	_RespondingNodeType_EndcX2Setup_H_


#include "asn_application.h"

/* Including external dependencies */
#include "constr_CHOICE.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum RespondingNodeType_EndcX2Setup_PR {
	RespondingNodeType_EndcX2Setup_PR_NOTHING,	/* No components present */
	RespondingNodeType_EndcX2Setup_PR_respond_eNB,
	RespondingNodeType_EndcX2Setup_PR_respond_en_gNB
	/* Extensions may appear below */
	
} RespondingNodeType_EndcX2Setup_PR;

/* Forward declarations */
struct ProtocolIE_Container;

/* RespondingNodeType-EndcX2Setup */
typedef struct RespondingNodeType_EndcX2Setup {
	RespondingNodeType_EndcX2Setup_PR present;
	union RespondingNodeType_EndcX2Setup_u {
		struct ProtocolIE_Container	*respond_eNB;
		struct ProtocolIE_Container	*respond_en_gNB;
		/*
		 * This type is extensible,
		 * possible extensions are below.
		 */
	} choice;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} RespondingNodeType_EndcX2Setup_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_RespondingNodeType_EndcX2Setup;

#ifdef __cplusplus
}
#endif

#endif	/* _RespondingNodeType_EndcX2Setup_H_ */
#include "asn_internal.h"
