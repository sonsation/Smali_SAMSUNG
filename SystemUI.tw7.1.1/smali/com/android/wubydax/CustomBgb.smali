.class public Lcom/android/wubydax/CustomBgb;
.super Landroid/widget/ImageView;
.source "CustomBg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wubydax/CustomBgb$CustomViewObserver;
    }
.end annotation


# instance fields
.field private COLOR_PRIMARY_KEY:Ljava/lang/String;

.field private COLOR_SECONDARY_KEY:Ljava/lang/String;

.field private CROP_KEY:Ljava/lang/String;

.field private CUSTOM_BG_TYPE:Ljava/lang/String;

.field private GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

.field private MASTER_SWITCH_KEY:Ljava/lang/String;

.field private OPACITY_KEY:Ljava/lang/String;

.field private URI_KEY:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorSecondary:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCustomBgType:I

.field private mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

.field private mImageUri:Landroid/net/Uri;

.field private mIsEnabled:Z

.field private mOpacity:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "gear_bg_image_uri_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->URI_KEY:Ljava/lang/String;

    const-string v1, "gear_bg_opacity_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->OPACITY_KEY:Ljava/lang/String;

    const-string v1, "gear_bg_crop_type_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->CROP_KEY:Ljava/lang/String;

    const-string v1, "gear_bg_primary_color_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const-string v1, "gear_second_gradient_color_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const-string v1, "gear_bg_gradient_orientation_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const-string v1, "enable_gear_custom_bg_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->MASTER_SWITCH_KEY:Ljava/lang/String;

    const-string v1, "gear_custom_bg_type_a"

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->CUSTOM_BG_TYPE:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/wubydax/CustomBgb$CustomViewObserver;-><init>(Lcom/android/wubydax/CustomBgb;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    iput-object p1, p0, Lcom/android/wubydax/CustomBgb;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->initValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wubydax/CustomBgb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->initValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wubydax/CustomBgb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->initView()V

    return-void
.end method

.method private getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 4

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-boolean v5, p0, Lcom/android/wubydax/CustomBgb;->mIsEnabled:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/wubydax/CustomBgb;->mCustomBgType:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    iget-object v5, p0, Lcom/android/wubydax/CustomBgb;->mImageUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/wubydax/CustomBgb;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/wubydax/CustomBgb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/wubydax/CustomBgb;->mColorPrimary:I

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/wubydax/CustomBgb;->mColorPrimary:I

    aput v7, v6, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/wubydax/CustomBgb;->mColorSecondary:I

    aput v8, v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMyScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 4

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->CROP_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initValues()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/wubydax/CustomBgb;->URI_KEY:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->mImageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/wubydax/CustomBgb;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/wubydax/CustomBgb;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->OPACITY_KEY:Ljava/lang/String;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/CustomBgb;->mOpacity:I

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/CustomBgb;->mColorPrimary:I

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const v4, -0xff0001

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/CustomBgb;->mColorSecondary:I

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->getMyScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wubydax/CustomBgb;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/CustomBgb;->mCustomBgType:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private initView()V
    .locals 2

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->getMyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/wubydax/CustomBgb;->mOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/wubydax/CustomBgb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/wubydax/CustomBgb;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->CROP_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->OPACITY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->URI_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wubydax/CustomBgb;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/CustomBgb;->mCustomViewObserver:Lcom/android/wubydax/CustomBgb$CustomViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/wubydax/CustomBgb;->initView()V

    return-void
.end method
