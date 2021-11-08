package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';


	// for anyone wondering, yes i had to manually type this all out.

	var SIX_1 = 's1';
	var SIX_2 = 's2';
	var SIX_3 = 's3';
	var SIX_4 = 's4';
	var SIX_5 = 's5';
	var SIX_6 = 's6';
	var SIX_7 = 's7';
	var SIX_8 = 's8';
	var SIX_9 = 's9';
	var SIX_10 = 's10';
	var SIX_11 = 's11';
	var SIX_12 = 's12';
	var SIX_13 = 's13';
	var SIX_14 = 's14';
	var SIX_15 = 's15';
	var SIX_16 = 's16';
	var SIX_17 = 's17';
	var SIX_18 = 's18';
	var SIX_19 = 's19';
	var SIX_20 = 's20';
	var SIX_21 = 's21';
	var SIX_22 = 's22';
	var SIX_23 = 's23';
	var SIX_24 = 's24';
	var SIX_25 = 's25';
	var SIX_26 = 's26';
	var SIX_27 = 's27';
	var SIX_28 = 's28';
	var SIX_29 = 's29';
	var SIX_30 = 's30';
	var SIX_31 = 's31';
	var SIX_32 = 's32';
	var SIX_33 = 's33';
	var SIX_34 = 's34';
	var SIX_35 = 's35';
	var SIX_36 = 's36';
	var SIX_37 = 's37';
	var SIX_38 = 's38';
	var SIX_39 = 's39';
	var SIX_40 = 's40';
	var SIX_41 = 's41';
	var SIX_42 = 's42';
	var SIX_43 = 's43';
	var SIX_44 = 's44';
	var SIX_45 = 's45';
	var SIX_46 = 's46';
	var SIX_47 = 's47';
	var SIX_48 = 's48';
	var SIX_49 = 's49';
	var SIX_50 = 's50';
	var SIX_51 = 's51';
	var SIX_52 = 's52';
	var SIX_53 = 's53';
	var SIX_54 = 's54';
	var SIX_55 = 's55';
	var SIX_56 = 's56';
	var SIX_57 = 's57';
	var SIX_58 = 's58';
	var SIX_59 = 's59';
	var SIX_60 = 's60';
	var SIX_61 = 's61';
	var SIX_62 = 's62';
	var SIX_63 = 's63';
	var SIX_64 = 's64';
	var SIX_65 = 's65';
	var SIX_66 = 's66';
	var SIX_67 = 's67';
	var SIX_68 = 's68';
	var SIX_69 = 's69';

	var SIX_1_P = 's1-press';
	var SIX_2_P = 's2-press';
	var SIX_3_P = 's3-press';
	var SIX_4_P = 's4-press';
	var SIX_5_P = 's5-press';
	var SIX_6_P = 's6-press';
	var SIX_7_P = 's7-press';
	var SIX_8_P = 's8-press';
	var SIX_9_P = 's9-press';
	var SIX_10_P = 's10-press';
	var SIX_11_P = 's11-press';
	var SIX_12_P = 's12-press';
	var SIX_13_P = 's13-press';
	var SIX_14_P = 's14-press';
	var SIX_15_P = 's15-press';
	var SIX_16_P = 's16-press';
	var SIX_17_P = 's17-press';
	var SIX_18_P = 's18-press';
	var SIX_19_P = 's19-press';
	var SIX_20_P = 's20-press';
	var SIX_21_P = 's21-press';
	var SIX_22_P = 's22-press';
	var SIX_23_P = 's23-press';
	var SIX_24_P = 's24-press';
	var SIX_25_P = 's25-press';
	var SIX_26_P = 's26-press';
	var SIX_27_P = 's27-press';
	var SIX_28_P = 's28-press';
	var SIX_29_P = 's29-press';
	var SIX_30_P = 's30-press';
	var SIX_31_P = 's31-press';
	var SIX_32_P = 's32-press';
	var SIX_33_P = 's33-press';
	var SIX_34_P = 's34-press';
	var SIX_35_P = 's35-press';
	var SIX_36_P = 's36-press';
	var SIX_37_P = 's37-press';
	var SIX_38_P = 's38-press';
	var SIX_39_P = 's39-press';
	var SIX_40_P = 's40-press';
	var SIX_41_P = 's41-press';
	var SIX_42_P = 's42-press';
	var SIX_43_P = 's43-press';
	var SIX_44_P = 's44-press';
	var SIX_45_P = 's45-press';
	var SIX_46_P = 's46-press';
	var SIX_47_P = 's47-press';
	var SIX_48_P = 's48-press';
	var SIX_49_P = 's49-press';
	var SIX_50_P = 's50-press';
	var SIX_51_P = 's51-press';
	var SIX_52_P = 's52-press';
	var SIX_53_P = 's53-press';
	var SIX_54_P = 's54-press';
	var SIX_55_P = 's55-press';
	var SIX_56_P = 's56-press';
	var SIX_57_P = 's57-press';
	var SIX_58_P = 's58-press';
	var SIX_59_P = 's59-press';
	var SIX_60_P = 's60-press';
	var SIX_61_P = 's61-press';
	var SIX_62_P = 's62-press';
	var SIX_63_P = 's63-press';
	var SIX_64_P = 's64-press';
	var SIX_65_P = 's65-press';
	var SIX_66_P = 's66-press';
	var SIX_67_P = 's67-press';
	var SIX_68_P = 's68-press';
	var SIX_69_P = 's69-press';

	var SIX_1_R = 's1-release';
	var SIX_2_R = 's2-release';
	var SIX_3_R = 's3-release';
	var SIX_4_R = 's4-release';
	var SIX_5_R = 's5-release';
	var SIX_6_R = 's6-release';
	var SIX_7_R = 's7-release';
	var SIX_8_R = 's8-release';
	var SIX_9_R = 's9-release';
	var SIX_10_R = 's10-release';
	var SIX_11_R = 's11-release';
	var SIX_12_R = 's12-release';
	var SIX_13_R = 's13-release';
	var SIX_14_R = 's14-release';
	var SIX_15_R = 's15-release';
	var SIX_16_R = 's16-release';
	var SIX_17_R = 's17-release';
	var SIX_18_R = 's18-release';
	var SIX_19_R = 's19-release';
	var SIX_20_R = 's20-release';
	var SIX_21_R = 's21-release';
	var SIX_22_R = 's22-release';
	var SIX_23_R = 's23-release';
	var SIX_24_R = 's24-release';
	var SIX_25_R = 's25-release';
	var SIX_26_R = 's26-release';
	var SIX_27_R = 's27-release';
	var SIX_28_R = 's28-release';
	var SIX_29_R = 's29-release';
	var SIX_30_R = 's30-release';
	var SIX_31_R = 's31-release';
	var SIX_32_R = 's32-release';
	var SIX_33_R = 's33-release';
	var SIX_34_R = 's34-release';
	var SIX_35_R = 's35-release';
	var SIX_36_R = 's36-release';
	var SIX_37_R = 's37-release';
	var SIX_38_R = 's38-release';
	var SIX_39_R = 's39-release';
	var SIX_40_R = 's40-release';
	var SIX_41_R = 's41-release';
	var SIX_42_R = 's42-release';
	var SIX_43_R = 's43-release';
	var SIX_44_R = 's44-release';
	var SIX_45_R = 's45-release';
	var SIX_46_R = 's46-release';
	var SIX_47_R = 's47-release';
	var SIX_48_R = 's48-release';
	var SIX_49_R = 's49-release';
	var SIX_50_R = 's50-release';
	var SIX_51_R = 's51-release';
	var SIX_52_R = 's52-release';
	var SIX_53_R = 's53-release';
	var SIX_54_R = 's54-release';
	var SIX_55_R = 's55-release';
	var SIX_56_R = 's56-release';
	var SIX_57_R = 's57-release';
	var SIX_58_R = 's58-release';
	var SIX_59_R = 's59-release';
	var SIX_60_R = 's60-release';
	var SIX_61_R = 's61-release';
	var SIX_62_R = 's62-release';
	var SIX_63_R = 's63-release';
	var SIX_64_R = 's64-release';
	var SIX_65_R = 's65-release';
	var SIX_66_R = 's66-release';
	var SIX_67_R = 's67-release';
	var SIX_68_R = 's68-release';
	var SIX_69_R = 's69-release';

	// 69 keys! (kill me why does this exist kill me stfu [aionmsfkljqsdwer90ij])
}
#else
@:enum
abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';



	var SIX_1 = 's1';
	var SIX_2 = 's2';
	var SIX_3 = 's3';
	var SIX_4 = 's4';
	var SIX_5 = 's5';
	var SIX_6 = 's6';
	var SIX_7 = 's7';
	var SIX_8 = 's8';
	var SIX_9 = 's9';
	var SIX_10 = 's10';
	var SIX_11 = 's11';
	var SIX_12 = 's12';
	var SIX_13 = 's13';
	var SIX_14 = 's14';
	var SIX_15 = 's15';
	var SIX_16 = 's16';
	var SIX_17 = 's17';
	var SIX_18 = 's18';
	var SIX_19 = 's19';
	var SIX_20 = 's20';
	var SIX_21 = 's21';
	var SIX_22 = 's22';
	var SIX_23 = 's23';
	var SIX_24 = 's24';
	var SIX_25 = 's25';
	var SIX_26 = 's26';
	var SIX_27 = 's27';
	var SIX_28 = 's28';
	var SIX_29 = 's29';
	var SIX_30 = 's30';
	var SIX_31 = 's31';
	var SIX_32 = 's32';
	var SIX_33 = 's33';
	var SIX_34 = 's34';
	var SIX_35 = 's35';
	var SIX_36 = 's36';
	var SIX_37 = 's37';
	var SIX_38 = 's38';
	var SIX_39 = 's39';
	var SIX_40 = 's40';
	var SIX_41 = 's41';
	var SIX_42 = 's42';
	var SIX_43 = 's43';
	var SIX_44 = 's44';
	var SIX_45 = 's45';
	var SIX_46 = 's46';
	var SIX_47 = 's47';
	var SIX_48 = 's48';
	var SIX_49 = 's49';
	var SIX_50 = 's50';
	var SIX_51 = 's51';
	var SIX_52 = 's52';
	var SIX_53 = 's53';
	var SIX_54 = 's54';
	var SIX_55 = 's55';
	var SIX_56 = 's56';
	var SIX_57 = 's57';
	var SIX_58 = 's58';
	var SIX_59 = 's59';
	var SIX_60 = 's60';
	var SIX_61 = 's61';
	var SIX_62 = 's62';
	var SIX_63 = 's63';
	var SIX_64 = 's64';
	var SIX_65 = 's65';
	var SIX_66 = 's66';
	var SIX_67 = 's67';
	var SIX_68 = 's68';
	var SIX_69 = 's69';

	var SIX_1_P = 's1-press';
	var SIX_2_P = 's2-press';
	var SIX_3_P = 's3-press';
	var SIX_4_P = 's4-press';
	var SIX_5_P = 's5-press';
	var SIX_6_P = 's6-press';
	var SIX_7_P = 's7-press';
	var SIX_8_P = 's8-press';
	var SIX_9_P = 's9-press';
	var SIX_10_P = 's10-press';
	var SIX_11_P = 's11-press';
	var SIX_12_P = 's12-press';
	var SIX_13_P = 's13-press';
	var SIX_14_P = 's14-press';
	var SIX_15_P = 's15-press';
	var SIX_16_P = 's16-press';
	var SIX_17_P = 's17-press';
	var SIX_18_P = 's18-press';
	var SIX_19_P = 's19-press';
	var SIX_20_P = 's20-press';
	var SIX_21_P = 's21-press';
	var SIX_22_P = 's22-press';
	var SIX_23_P = 's23-press';
	var SIX_24_P = 's24-press';
	var SIX_25_P = 's25-press';
	var SIX_26_P = 's26-press';
	var SIX_27_P = 's27-press';
	var SIX_28_P = 's28-press';
	var SIX_29_P = 's29-press';
	var SIX_30_P = 's30-press';
	var SIX_31_P = 's31-press';
	var SIX_32_P = 's32-press';
	var SIX_33_P = 's33-press';
	var SIX_34_P = 's34-press';
	var SIX_35_P = 's35-press';
	var SIX_36_P = 's36-press';
	var SIX_37_P = 's37-press';
	var SIX_38_P = 's38-press';
	var SIX_39_P = 's39-press';
	var SIX_40_P = 's40-press';
	var SIX_41_P = 's41-press';
	var SIX_42_P = 's42-press';
	var SIX_43_P = 's43-press';
	var SIX_44_P = 's44-press';
	var SIX_45_P = 's45-press';
	var SIX_46_P = 's46-press';
	var SIX_47_P = 's47-press';
	var SIX_48_P = 's48-press';
	var SIX_49_P = 's49-press';
	var SIX_50_P = 's50-press';
	var SIX_51_P = 's51-press';
	var SIX_52_P = 's52-press';
	var SIX_53_P = 's53-press';
	var SIX_54_P = 's54-press';
	var SIX_55_P = 's55-press';
	var SIX_56_P = 's56-press';
	var SIX_57_P = 's57-press';
	var SIX_58_P = 's58-press';
	var SIX_59_P = 's59-press';
	var SIX_60_P = 's60-press';
	var SIX_61_P = 's61-press';
	var SIX_62_P = 's62-press';
	var SIX_63_P = 's63-press';
	var SIX_64_P = 's64-press';
	var SIX_65_P = 's65-press';
	var SIX_66_P = 's66-press';
	var SIX_67_P = 's67-press';
	var SIX_68_P = 's68-press';
	var SIX_69_P = 's69-press';

	var SIX_1_R = 's1-release';
	var SIX_2_R = 's2-release';
	var SIX_3_R = 's3-release';
	var SIX_4_R = 's4-release';
	var SIX_5_R = 's5-release';
	var SIX_6_R = 's6-release';
	var SIX_7_R = 's7-release';
	var SIX_8_R = 's8-release';
	var SIX_9_R = 's9-release';
	var SIX_10_R = 's10-release';
	var SIX_11_R = 's11-release';
	var SIX_12_R = 's12-release';
	var SIX_13_R = 's13-release';
	var SIX_14_R = 's14-release';
	var SIX_15_R = 's15-release';
	var SIX_16_R = 's16-release';
	var SIX_17_R = 's17-release';
	var SIX_18_R = 's18-release';
	var SIX_19_R = 's19-release';
	var SIX_20_R = 's20-release';
	var SIX_21_R = 's21-release';
	var SIX_22_R = 's22-release';
	var SIX_23_R = 's23-release';
	var SIX_24_R = 's24-release';
	var SIX_25_R = 's25-release';
	var SIX_26_R = 's26-release';
	var SIX_27_R = 's27-release';
	var SIX_28_R = 's28-release';
	var SIX_29_R = 's29-release';
	var SIX_30_R = 's30-release';
	var SIX_31_R = 's31-release';
	var SIX_32_R = 's32-release';
	var SIX_33_R = 's33-release';
	var SIX_34_R = 's34-release';
	var SIX_35_R = 's35-release';
	var SIX_36_R = 's36-release';
	var SIX_37_R = 's37-release';
	var SIX_38_R = 's38-release';
	var SIX_39_R = 's39-release';
	var SIX_40_R = 's40-release';
	var SIX_41_R = 's41-release';
	var SIX_42_R = 's42-release';
	var SIX_43_R = 's43-release';
	var SIX_44_R = 's44-release';
	var SIX_45_R = 's45-release';
	var SIX_46_R = 's46-release';
	var SIX_47_R = 's47-release';
	var SIX_48_R = 's48-release';
	var SIX_49_R = 's49-release';
	var SIX_50_R = 's50-release';
	var SIX_51_R = 's51-release';
	var SIX_52_R = 's52-release';
	var SIX_53_R = 's53-release';
	var SIX_54_R = 's54-release';
	var SIX_55_R = 's55-release';
	var SIX_56_R = 's56-release';
	var SIX_57_R = 's57-release';
	var SIX_58_R = 's58-release';
	var SIX_59_R = 's59-release';
	var SIX_60_R = 's60-release';
	var SIX_61_R = 's61-release';
	var SIX_62_R = 's62-release';
	var SIX_63_R = 's63-release';
	var SIX_64_R = 's64-release';
	var SIX_65_R = 's65-release';
	var SIX_66_R = 's66-release';
	var SIX_67_R = 's67-release';
	var SIX_68_R = 's68-release';
	var SIX_69_R = 's69-release';
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;

	A1;
	A2;
	A3;
	A4;
	A5;
	A6;
	A7;

	B1;
	B2;
	B3;
	B4;
	B5;
	B6;
	B7;
	B8;
	B9;


	SIX_1;
	SIX_2;
	SIX_3;
	SIX_4;
	SIX_5;
	SIX_6;
	SIX_7;
	SIX_8;
	SIX_9;
	SIX_10;
	SIX_11;
	SIX_12;
	SIX_13;
	SIX_14;
	SIX_15;
	SIX_16;
	SIX_17;
	SIX_18;
	SIX_19;
	SIX_20;
	SIX_21;
	SIX_22;
	SIX_23;
	SIX_24;
	SIX_25;
	SIX_26;
	SIX_27;
	SIX_28;
	SIX_29;
	SIX_30;
	SIX_31;
	SIX_32;
	SIX_33;
	SIX_34;
	SIX_35;
	SIX_36;
	SIX_37;
	SIX_38;
	SIX_39;
	SIX_40;
	SIX_41;
	SIX_42;
	SIX_43;
	SIX_44;
	SIX_45;
	SIX_46;
	SIX_47;
	SIX_48;
	SIX_49;
	SIX_50;
	SIX_51;
	SIX_52;
	SIX_53;
	SIX_54;
	SIX_55;
	SIX_56;
	SIX_57;
	SIX_58;
	SIX_59;
	SIX_60;
	SIX_61;
	SIX_62;
	SIX_63;
	SIX_64;
	SIX_65;
	SIX_66;
	SIX_67;
	SIX_68;
	SIX_69;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);

	var _a1 = new FlxActionDigital(Action.A1);
	var _a2 = new FlxActionDigital(Action.A2);
	var _a3 = new FlxActionDigital(Action.A3);
	var _a4 = new FlxActionDigital(Action.A4);
	var _a5 = new FlxActionDigital(Action.A5);
	var _a6 = new FlxActionDigital(Action.A6);
	var _a7 = new FlxActionDigital(Action.A7);

	var _a1P = new FlxActionDigital(Action.A1_P);
	var _a2P = new FlxActionDigital(Action.A2_P);
	var _a3P = new FlxActionDigital(Action.A3_P);
	var _a4P = new FlxActionDigital(Action.A4_P);
	var _a5P = new FlxActionDigital(Action.A5_P);
	var _a6P = new FlxActionDigital(Action.A6_P);
	var _a7P = new FlxActionDigital(Action.A7_P);

	var _a1R = new FlxActionDigital(Action.A1_R);
	var _a2R = new FlxActionDigital(Action.A2_R);
	var _a3R = new FlxActionDigital(Action.A3_R);
	var _a4R = new FlxActionDigital(Action.A4_R);
	var _a5R = new FlxActionDigital(Action.A5_R);
	var _a6R = new FlxActionDigital(Action.A6_R);
	var _a7R = new FlxActionDigital(Action.A7_R);


	var _b1 = new FlxActionDigital(Action.B1);
	var _b2 = new FlxActionDigital(Action.B2);
	var _b3 = new FlxActionDigital(Action.B3);
	var _b4 = new FlxActionDigital(Action.B4);
	var _b5 = new FlxActionDigital(Action.B5);
	var _b6 = new FlxActionDigital(Action.B6);
	var _b7 = new FlxActionDigital(Action.B7);
	var _b8 = new FlxActionDigital(Action.B8);
	var _b9 = new FlxActionDigital(Action.B9);

	var _b1P = new FlxActionDigital(Action.B1_P);
	var _b2P = new FlxActionDigital(Action.B2_P);
	var _b3P = new FlxActionDigital(Action.B3_P);
	var _b4P = new FlxActionDigital(Action.B4_P);
	var _b5P = new FlxActionDigital(Action.B5_P);
	var _b6P = new FlxActionDigital(Action.B6_P);
	var _b7P = new FlxActionDigital(Action.B7_P);
	var _b8P = new FlxActionDigital(Action.B8_P);
	var _b9P = new FlxActionDigital(Action.B9_P);

	var _b1R = new FlxActionDigital(Action.B1_R);
	var _b2R = new FlxActionDigital(Action.B2_R);
	var _b3R = new FlxActionDigital(Action.B3_R);
	var _b4R = new FlxActionDigital(Action.B4_R);
	var _b5R = new FlxActionDigital(Action.B5_R);
	var _b6R = new FlxActionDigital(Action.B6_R);
	var _b7R = new FlxActionDigital(Action.B7_R);
	var _b8R = new FlxActionDigital(Action.B8_R);
	var _b9R = new FlxActionDigital(Action.B9_R);

	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var A1(get, never):Bool; inline function get_A1() {return _a1.check();}
	public var A2(get, never):Bool; inline function get_A2() {return _a2.check();}
	public var A3(get, never):Bool; inline function get_A3() {return _a3.check();}
	public var A4(get, never):Bool; inline function get_A4() {return _a4.check();}
	public var A5(get, never):Bool; inline function get_A5() {return _a5.check();}
	public var A6(get, never):Bool; inline function get_A6() {return _a6.check();}
	public var A7(get, never):Bool; inline function get_A7() {return _a7.check();}

	public var A1_P(get, never):Bool; inline function get_A1_P() {return _a1P.check();}
	public var A2_P(get, never):Bool; inline function get_A2_P() {return _a2P.check();}
	public var A3_P(get, never):Bool; inline function get_A3_P() {return _a3P.check();}
	public var A4_P(get, never):Bool; inline function get_A4_P() {return _a4P.check();}
	public var A5_P(get, never):Bool; inline function get_A5_P() {return _a5P.check();}
	public var A6_P(get, never):Bool; inline function get_A6_P() {return _a6P.check();}
	public var A7_P(get, never):Bool; inline function get_A7_P() {return _a7P.check();}

	public var A1_R(get, never):Bool; inline function get_A1_R() {return _a1R.check();}
	public var A2_R(get, never):Bool; inline function get_A2_R() {return _a2R.check();}
	public var A3_R(get, never):Bool; inline function get_A3_R() {return _a3R.check();}
	public var A4_R(get, never):Bool; inline function get_A4_R() {return _a4R.check();}
	public var A5_R(get, never):Bool; inline function get_A5_R() {return _a5R.check();}
	public var A6_R(get, never):Bool; inline function get_A6_R() {return _a6R.check();}
	public var A7_R(get, never):Bool; inline function get_A7_R() {return _a7R.check();}


	public var B1(get, never):Bool; inline function get_B1() {return _b1.check();}
	public var B2(get, never):Bool; inline function get_B2() {return _b2.check();}
	public var B3(get, never):Bool; inline function get_B3() {return _b3.check();}
	public var B4(get, never):Bool; inline function get_B4() {return _b4.check();}
	public var B5(get, never):Bool; inline function get_B5() {return _b5.check();}
	public var B6(get, never):Bool; inline function get_B6() {return _b6.check();}
	public var B7(get, never):Bool; inline function get_B7() {return _b7.check();}
	public var B8(get, never):Bool; inline function get_B8() {return _b8.check();}
	public var B9(get, never):Bool; inline function get_B9() {return _b9.check();}

	public var B1_P(get, never):Bool; inline function get_B1_P() {return _b1P.check();}
	public var B2_P(get, never):Bool; inline function get_B2_P() {return _b2P.check();}
	public var B3_P(get, never):Bool; inline function get_B3_P() {return _b3P.check();}
	public var B4_P(get, never):Bool; inline function get_B4_P() {return _b4P.check();}
	public var B5_P(get, never):Bool; inline function get_B5_P() {return _b5P.check();}
	public var B6_P(get, never):Bool; inline function get_B6_P() {return _b6P.check();}
	public var B7_P(get, never):Bool; inline function get_B7_P() {return _b7P.check();}
	public var B8_P(get, never):Bool; inline function get_B8_P() {return _b8P.check();}
	public var B9_P(get, never):Bool; inline function get_B9_P() {return _b9P.check();}

	public var B1_R(get, never):Bool; inline function get_B1_R() {return _b1R.check();}
	public var B2_R(get, never):Bool; inline function get_B2_R() {return _b2R.check();}
	public var B3_R(get, never):Bool; inline function get_B3_R() {return _b3R.check();}
	public var B4_R(get, never):Bool; inline function get_B4_R() {return _b4R.check();}
	public var B5_R(get, never):Bool; inline function get_B5_R() {return _b5R.check();}
	public var B6_R(get, never):Bool; inline function get_B6_R() {return _b6R.check();}
	public var B7_R(get, never):Bool; inline function get_B7_R() {return _b7R.check();}
	public var B8_R(get, never):Bool; inline function get_B8_R() {return _b8R.check();}
	public var B9_R(get, never):Bool; inline function get_B9_R() {return _b9R.check();}

	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;

			case A1: _a1;
			case A2: _a2;
			case A3: _a3;
			case A4: _a4;
			case A5: _a5;
			case A6: _a6;
			case A7: _a7;


			case B1: _b1;
			case B2: _b2;
			case B3: _b3;
			case B4: _b4;
			case B5: _b5;
			case B6: _b6;
			case B7: _b7;
			case B8: _b8;
			case B9: _b9;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);

			case A1:
				func(_a1, PRESSED);
				func(_a1P, JUST_PRESSED);
				func(_a1R, JUST_RELEASED);
			case A2:
				func(_a2, PRESSED);
				func(_a2P, JUST_PRESSED);
				func(_a2R, JUST_RELEASED);
			case A3:
				func(_a3, PRESSED);
				func(_a3P, JUST_PRESSED);
				func(_a3R, JUST_RELEASED);
			case A4:
				func(_a4, PRESSED);
				func(_a4P, JUST_PRESSED);
				func(_a4R, JUST_RELEASED);
			case A5:
				func(_a5, PRESSED);
				func(_a5P, JUST_PRESSED);
				func(_a5R, JUST_RELEASED);
			case A6:
				func(_a6, PRESSED);
				func(_a6P, JUST_PRESSED);
				func(_a6R, JUST_RELEASED);
			case A7:
				func(_a7, PRESSED);
				func(_a7P, JUST_PRESSED);
				func(_a7R, JUST_RELEASED);


			case B1:
				func(_b1, PRESSED);
				func(_b1P, JUST_PRESSED);
				func(_b1R, JUST_RELEASED);
			case B2:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B3:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B4:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B5:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B6:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B7:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B8:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B9:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, copyKeys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, copyKeys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, copyKeys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, copyKeys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if(key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [X, BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				//inline bindKeys(Control.RESET, []);
			case Duo(true):
				inline bindKeys(Control.UI_UP, [W]);
				inline bindKeys(Control.UI_DOWN, [S]);
				inline bindKeys(Control.UI_LEFT, [A]);
				inline bindKeys(Control.UI_RIGHT, [D]);
				inline bindKeys(Control.NOTE_UP, [W]);
				inline bindKeys(Control.NOTE_DOWN, [S]);
				inline bindKeys(Control.NOTE_LEFT, [A]);
				inline bindKeys(Control.NOTE_RIGHT, [D]);
				inline bindKeys(Control.ACCEPT, [G, Z]);
				inline bindKeys(Control.BACK, [H, X]);
				inline bindKeys(Control.PAUSE, [ONE]);
				//inline bindKeys(Control.RESET, [R]);
			case Duo(false):
				inline bindKeys(Control.UI_UP, [FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				//inline bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				//bindKeys(Control.RESET, [R]);
			case Duo(true):
				bindKeys(Control.UI_UP, [W]);
				bindKeys(Control.UI_DOWN, [S]);
				bindKeys(Control.UI_LEFT, [A]);
				bindKeys(Control.UI_RIGHT, [D]);
				bindKeys(Control.NOTE_UP, [W]);
				bindKeys(Control.NOTE_DOWN, [S]);
				bindKeys(Control.NOTE_LEFT, [A]);
				bindKeys(Control.NOTE_RIGHT, [D]);
				bindKeys(Control.ACCEPT, [G, Z]);
				bindKeys(Control.BACK, [H, X]);
				bindKeys(Control.PAUSE, [ONE]);
				//bindKeys(Control.RESET, [R]);
			case Duo(false):
				bindKeys(Control.UI_UP, [FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);
				//bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}