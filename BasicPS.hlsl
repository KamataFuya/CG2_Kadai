#include "Basic.hlsli"

Texture2D<float4> tex : register(t0); //0番スロットに設定されたテクスチャ
SamplerState smp : register(s0); //0番スロットに設定されたサンプラー

float4 main(VSOutput input) : SV_TARGET{
	/*return float4(tex.Sample(smp,input.uv));*/
	//return float4(1,1,1,1);//5-4終了後、元に戻す
	return float4(tex.Sample(smp,input.uv)) * color;
}