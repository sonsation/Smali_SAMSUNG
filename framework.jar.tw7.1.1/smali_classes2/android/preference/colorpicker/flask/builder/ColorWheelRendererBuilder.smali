.class public Landroid/preference/colorpicker/flask/builder/ColorWheelRendererBuilder;
.super Ljava/lang/Object;
.source "ColorWheelRendererBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRenderer(Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;)Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;
    .locals 2

    sget-object v0, Landroid/preference/colorpicker/flask/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$flask$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong WHEEL_TYPE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;

    invoke-direct {v0}, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;

    invoke-direct {v0}, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
