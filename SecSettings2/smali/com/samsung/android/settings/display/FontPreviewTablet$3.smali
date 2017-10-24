.class Lcom/samsung/android/settings/display/FontPreviewTablet$3;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreviewTablet;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$3;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$3;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get6(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$3;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iput p2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$3;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set2(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z

    .line 329
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 325
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 321
    return-void
.end method
