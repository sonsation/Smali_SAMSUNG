.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
.super Ljava/lang/Object;
.source "SeslMenuPopupHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuHelper;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 65
    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 70
    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 76
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p6, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const v0, 0x800003

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mDropDownGravity:I

    .line 333
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper$1;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 84
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 85
    iput-boolean p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOverflowOnly:Z

    .line 86
    iput p5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleAttr:I

    .line 87
    iput p6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleRes:I

    .line 88
    return-void
.end method

.method private createPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 223
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 224
    .local v7, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 226
    .local v8, "displaySize":Landroid/graphics/Point;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 227
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 234
    :goto_0
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 235
    .local v11, "smallestWidth":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 237
    .local v10, "minSmallestWidthCascading":I
    if-lt v11, v10, :cond_2

    const/4 v9, 0x1

    .line 240
    .local v9, "enableCascadingSubmenus":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 241
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleAttr:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 249
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->addMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 253
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 255
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setForceShowIcon(Z)V

    .line 256
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setGravity(I)V

    .line 258
    return-object v0

    .line 228
    .end local v0    # "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    .end local v9    # "enableCascadingSubmenus":Z
    .end local v10    # "minSmallestWidthCascading":I
    .end local v11    # "smallestWidth":I
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    .line 229
    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 237
    .restart local v10    # "minSmallestWidthCascading":I
    .restart local v11    # "smallestWidth":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 244
    .restart local v9    # "enableCascadingSubmenus":Z
    :cond_3
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;IIZ)V

    .restart local v0    # "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    goto :goto_2
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    move-result-object v4

    .line 263
    .local v4, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    invoke-virtual {v4, p4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setShowTitle(Z)V

    .line 265
    if-eqz p3, :cond_1

    .line 269
    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mDropDownGravity:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 270
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    .line 269
    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v3, v5, 0x7

    .line 271
    .local v3, "hgrav":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr p1, v5

    .line 275
    :cond_0
    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setHorizontalOffset(I)V

    .line 276
    invoke-virtual {v4, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setVerticalOffset(I)V

    .line 282
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 283
    .local v0, "density":F
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 284
    .local v2, "halfSize":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    sub-int v6, p2, v2

    add-int v7, p1, v2

    add-int v8, p2, v2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 289
    .end local v0    # "density":F
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    .end local v2    # "halfSize":I
    .end local v3    # "hgrav":I
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->show()V

    .line 290
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->dismiss()V

    .line 300
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->createPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    .line 313
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 316
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 103
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mForceShowIcon:Z

    .line 116
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setForceShowIcon(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mDropDownGravity:I

    .line 130
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 92
    return-void
.end method

.method public setPresenterCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 325
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 328
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslMenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslMenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 207
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method
