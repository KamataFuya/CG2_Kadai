#include "Basic.hlsli"

Texture2D<float4> tex : register(t0); //0�ԃX���b�g�ɐݒ肳�ꂽ�e�N�X�`��
SamplerState smp : register(s0); //0�ԃX���b�g�ɐݒ肳�ꂽ�T���v���[

float4 main(VSOutput input) : SV_TARGET{
	/*return float4(tex.Sample(smp,input.uv));*/
	//return float4(1,1,1,1);//5-4�I����A���ɖ߂�
	return float4(tex.Sample(smp,input.uv)) * color;
}