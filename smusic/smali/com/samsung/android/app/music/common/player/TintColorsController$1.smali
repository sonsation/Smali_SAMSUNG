.class Lcom/samsung/android/app/music/common/player/TintColorsController$1;
.super Ljava/lang/Object;
.source "TintColorsController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/TintColorsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/TintColorsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/TintColorsController;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 9
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "tintInfo"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    if-nez v5, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    aput v8, v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 50
    .local v1, "g":Landroid/graphics/drawable/GradientDrawable;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    .line 51
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "currentDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    .line 54
    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 55
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 56
    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 59
    .local v4, "progressDrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x102000d

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 60
    const/4 v5, 0x2

    const v6, 0x102000d

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 62
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 63
    .local v3, "progress":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    iget v6, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->requestLayout()V

    .line 66
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;->this$0:Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;->access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 72
    .end local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "progress":I
    .end local v4    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v5, "Ui"

    const-string v6, "Please check SeekBar background drawable"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
