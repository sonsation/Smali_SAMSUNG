.class Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanelActionCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnchorView:Landroid/view/View;

.field private final mOffsetX:I

.field private final mOffsetY:I

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mActivity:Landroid/app/Activity;

    .line 198
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mView:Landroid/view/View;

    .line 199
    const v1, 0x7f120056

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mAnchorView:Landroid/view/View;

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mOffsetX:I

    .line 203
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mOffsetY:I

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mOffsetY:I

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mAnchorView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreate(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;)Landroid/widget/PopupWindow;
    .locals 7
    .param p1, "look"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 213
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 214
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->layoutId:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "panelView":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    iget v3, p1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->widthId:I

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->heightId:I

    .line 217
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 218
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    iget v3, p1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->backgroundId:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0151

    .line 220
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 221
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 222
    const v3, 0x7f0f0299

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 223
    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 231
    return-object v1
.end method

.method public onShow(Landroid/widget/PopupWindow;)V
    .locals 9
    .param p1, "panel"    # Landroid/widget/PopupWindow;

    .prologue
    const/4 v8, 0x0

    .line 236
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mAnchorView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 237
    const-string v6, "UiPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onShow(), anchor view is null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 242
    .local v1, "drawingLocation":[I
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 244
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    .line 245
    .local v3, "panelHeight":I
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/UiUtils;->getCaptionHeight(Landroid/app/Activity;)I

    move-result v0

    .line 246
    .local v0, "captionHeight":I
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mOffsetX:I

    sub-int v2, v6, v7

    .line 248
    .local v2, "marginEnd":I
    aget v6, v1, v8

    add-int v4, v6, v2

    .line 249
    .local v4, "x":I
    const/4 v6, 0x1

    aget v6, v1, v6

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mOffsetY:I

    sub-int v5, v6, v7

    .line 251
    .local v5, "y":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 252
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 254
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 255
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->mView:Landroid/view/View;

    const v7, 0x800033

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p1, v6, v7, v4, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
