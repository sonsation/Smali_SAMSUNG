.class Lcom/samsung/android/settings/display/FontPreviewTablet$4;
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
    .line 351
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

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
    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iput p2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentFontIndex:I

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap1(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set1(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get1(Lcom/samsung/android/settings/display/FontPreviewTablet;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get8(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get8(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 357
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 353
    return-void
.end method
