// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.20 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.20;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4013,x:33059,y:32700,varname:node_4013,prsc:2|diff-4100-RGB,spec-1579-OUT,normal-14-RGB,alpha-4100-A;n:type:ShaderForge.SFN_Tex2d,id:4100,x:31516,y:32459,ptovrint:False,ptlb:Water_Diff,ptin:_Water_Diff,varname:node_4100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3d11919464c5d0148a1b63d5bcbcdb82,ntxv:0,isnm:False|UVIN-4654-OUT;n:type:ShaderForge.SFN_Tex2d,id:14,x:32462,y:33586,ptovrint:False,ptlb:node_14,ptin:_node_14,varname:node_14,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a222af981a09bb49b45139eb51f58f0,ntxv:3,isnm:False|UVIN-4654-OUT;n:type:ShaderForge.SFN_Fresnel,id:4,x:32206,y:33085,varname:node_4,prsc:2|NRM-8679-RGB;n:type:ShaderForge.SFN_Add,id:225,x:32386,y:33085,varname:node_225,prsc:2|A-4478-OUT,B-4-OUT;n:type:ShaderForge.SFN_Slider,id:2503,x:32264,y:33237,ptovrint:False,ptlb:Speculair Value_copy,ptin:_SpeculairValue_copy,varname:_SpeculairValue_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7532218,max:1;n:type:ShaderForge.SFN_Multiply,id:1579,x:32578,y:33083,varname:node_1579,prsc:2|A-225-OUT,B-2503-OUT;n:type:ShaderForge.SFN_Tex2d,id:8679,x:31947,y:33092,ptovrint:False,ptlb:node_14_copy,ptin:_node_14_copy,varname:_node_14_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a222af981a09bb49b45139eb51f58f0,ntxv:3,isnm:False|UVIN-4654-OUT;n:type:ShaderForge.SFN_Clamp01,id:4478,x:32072,y:32877,varname:node_4478,prsc:2|IN-1847-OUT;n:type:ShaderForge.SFN_Multiply,id:1847,x:31773,y:32877,varname:node_1847,prsc:2|A-9238-RGB,B-9031-OUT;n:type:ShaderForge.SFN_Tex2d,id:9238,x:31549,y:32922,ptovrint:False,ptlb:WaterNormal3,ptin:_WaterNormal3,varname:_WaterNormal3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fd049f840c10874499a465748d9e4b32,ntxv:2,isnm:False|UVIN-4654-OUT;n:type:ShaderForge.SFN_Vector1,id:9031,x:31550,y:33096,varname:node_9031,prsc:2,v1:0.2;n:type:ShaderForge.SFN_TexCoord,id:8211,x:30910,y:33120,varname:node_8211,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:6429,x:30796,y:33370,varname:node_6429,prsc:2;n:type:ShaderForge.SFN_Add,id:4654,x:31240,y:33118,varname:node_4654,prsc:2|A-8211-UVOUT,B-2187-OUT;n:type:ShaderForge.SFN_Slider,id:3564,x:30672,y:33544,ptovrint:False,ptlb:Timer,ptin:_Timer,varname:node_3564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.1;n:type:ShaderForge.SFN_Multiply,id:2187,x:31030,y:33321,varname:node_2187,prsc:2|A-6429-TSL,B-3564-OUT;proporder:4100-14-2503-8679-9238-3564;pass:END;sub:END;*/

Shader "Shader Forge/WaterStuff" {
    Properties {
        _Water_Diff ("Water_Diff", 2D) = "white" {}
        _node_14 ("node_14", 2D) = "bump" {}
        _SpeculairValue_copy ("Speculair Value_copy", Range(0, 1)) = 0.7532218
        _node_14_copy ("node_14_copy", 2D) = "bump" {}
        _WaterNormal3 ("WaterNormal3", 2D) = "black" {}
        _Timer ("Timer", Range(0, 0.1)) = 0.05
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Water_Diff; uniform float4 _Water_Diff_ST;
            uniform sampler2D _node_14; uniform float4 _node_14_ST;
            uniform float _SpeculairValue_copy;
            uniform sampler2D _node_14_copy; uniform float4 _node_14_copy_ST;
            uniform sampler2D _WaterNormal3; uniform float4 _WaterNormal3_ST;
            uniform float _Timer;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_6429 = _Time + _TimeEditor;
                float2 node_4654 = (i.uv0+(node_6429.r*_Timer));
                float4 _node_14_var = tex2D(_node_14,TRANSFORM_TEX(node_4654, _node_14));
                float3 normalLocal = _node_14_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _WaterNormal3_var = tex2D(_WaterNormal3,TRANSFORM_TEX(node_4654, _WaterNormal3));
                float4 _node_14_copy_var = tex2D(_node_14_copy,TRANSFORM_TEX(node_4654, _node_14_copy));
                float3 specularColor = ((saturate((_WaterNormal3_var.rgb*0.2))+(1.0-max(0,dot(_node_14_copy_var.rgb, viewDirection))))*_SpeculairValue_copy);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Water_Diff_var = tex2D(_Water_Diff,TRANSFORM_TEX(node_4654, _Water_Diff));
                float3 diffuseColor = _Water_Diff_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,_Water_Diff_var.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Water_Diff; uniform float4 _Water_Diff_ST;
            uniform sampler2D _node_14; uniform float4 _node_14_ST;
            uniform float _SpeculairValue_copy;
            uniform sampler2D _node_14_copy; uniform float4 _node_14_copy_ST;
            uniform sampler2D _WaterNormal3; uniform float4 _WaterNormal3_ST;
            uniform float _Timer;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_6429 = _Time + _TimeEditor;
                float2 node_4654 = (i.uv0+(node_6429.r*_Timer));
                float4 _node_14_var = tex2D(_node_14,TRANSFORM_TEX(node_4654, _node_14));
                float3 normalLocal = _node_14_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _WaterNormal3_var = tex2D(_WaterNormal3,TRANSFORM_TEX(node_4654, _WaterNormal3));
                float4 _node_14_copy_var = tex2D(_node_14_copy,TRANSFORM_TEX(node_4654, _node_14_copy));
                float3 specularColor = ((saturate((_WaterNormal3_var.rgb*0.2))+(1.0-max(0,dot(_node_14_copy_var.rgb, viewDirection))))*_SpeculairValue_copy);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Water_Diff_var = tex2D(_Water_Diff,TRANSFORM_TEX(node_4654, _Water_Diff));
                float3 diffuseColor = _Water_Diff_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * _Water_Diff_var.a,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
