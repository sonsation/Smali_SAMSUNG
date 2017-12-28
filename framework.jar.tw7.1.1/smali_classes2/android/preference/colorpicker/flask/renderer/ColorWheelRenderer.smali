.class public interface abstract Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;
.super Ljava/lang/Object;
.source "ColorWheelRenderer.java"


# static fields
.field public static final GAP_PERCENTAGE:F = 0.025f


# virtual methods
.method public abstract draw()V
.end method

.method public abstract getColorCircleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/colorpicker/flask/ColorCircle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRenderOption()Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;
.end method

.method public abstract initWith(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;)V
.end method
