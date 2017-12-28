.class public Lcom/android/launcher3/common/view/IconView;
.super Landroid/widget/FrameLayout;
.source "IconView.java"

# interfaces
.implements Lcom/android/launcher3/common/view/Removable;


# static fields
.field private static final CHECKBOX_ANIM_DURATION:I = 0x64

.field public static final DISPLAY_APPS:I = 0x2

.field public static final DISPLAY_FOLDER_ITEM:I = 0x3

.field public static final DISPLAY_HOME_FOLDER_ITEM:I = 0x4

.field public static final DISPLAY_HOTSEAT:I = 0x1

.field public static final DISPLAY_WORKSPACE:I = 0x0

.field public static final EXTRA_SHORTCUT_LIVE_ICON_COMPONENT:Ljava/lang/String; = "liveicon_cmpname"

.field public static final EXTRA_SHORTCUT_USER_ID:Ljava/lang/String; = "userid"

.field private static final INVALID_DATA:I = -0x1

.field public static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field private static final SCALE_ANIMATION_DURATION:I = 0x12c

.field private static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field private static mBadgePositionFactor:F


# instance fields
.field private mBadgeCount:Ljava/lang/String;

.field protected mBadgeView:Landroid/widget/TextView;

.field protected mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCountBadgeView:Landroid/widget/TextView;

.field private mDisableAlphaOnPress:Z

.field private mDisableRelayout:Z

.field protected mDrawablePadding:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconDisplay:I

.field private mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconSize:I

.field protected mIconTextBackground:Landroid/graphics/drawable/Drawable;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIsSetThemeBadgeBg:Z

.field private mIsShortcutIconShownWithTitle:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLongKeyHelper:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

.field private final mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMarkToRemove:Z

.field protected mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private final mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x22

    .line 96
    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 131
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    move-object v1, p1

    .line 152
    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 154
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    .line 156
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 160
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;-><init>(Landroid/view/View;Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLongKeyHelper:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    .line 161
    new-instance v1, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 163
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/IconView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/IconView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconView;->updateContentDescription(Z)V

    return-void
.end method

.method private animateEachScale(Landroid/view/View;ZIJZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z
    .param p3, "duration"    # I
    .param p4, "delay"    # J
    .param p6, "animated"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1026
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    if-eqz p6, :cond_4

    .line 1031
    if-eqz p2, :cond_2

    move v2, v3

    .line 1032
    .local v2, "start":F
    :goto_1
    if-eqz p2, :cond_3

    .line 1034
    .local v1, "end":F
    :goto_2
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    .line 1035
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    .line 1036
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1034
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1038
    .local v0, "animator":Landroid/animation/Animator;
    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1039
    sget-object v3, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1040
    new-instance v3, Lcom/android/launcher3/common/view/IconView$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/common/view/IconView$2;-><init>(Lcom/android/launcher3/common/view/IconView;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1055
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1056
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "end":F
    .end local v2    # "start":F
    :cond_2
    move v2, v1

    .line 1031
    goto :goto_1

    .restart local v2    # "start":F
    :cond_3
    move v1, v3

    .line 1032
    goto :goto_2

    .line 1058
    .end local v2    # "start":F
    :cond_4
    if-eqz p2, :cond_5

    move v4, v1

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1059
    if-eqz p2, :cond_6

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1060
    if-eqz p2, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v4, v3

    .line 1058
    goto :goto_3

    :cond_6
    move v1, v3

    .line 1059
    goto :goto_4

    .line 1060
    :cond_7
    const/4 v3, 0x4

    goto :goto_5
.end method

.method public static isKnoxShortcut(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 1021
    if-eqz p0, :cond_0

    const-string v0, "com.samsung.knox.rcp.components"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxShortcut(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 1017
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->setShadow()V

    .line 710
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 713
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 715
    :cond_0
    instance-of v3, p2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 719
    invoke-static {v3}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 720
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 721
    invoke-virtual {v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 722
    .local v1, "iconImage":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {v1, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 723
    .local v0, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 727
    .end local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .end local v1    # "iconImage":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    return-object p2

    .line 725
    .restart local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    iput-object p2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateContentDescription(Z)V
    .locals 6
    .param p1, "isSelectState"    # Z

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 995
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090045

    .line 996
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    .line 995
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "description":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 999
    if-eqz p1, :cond_3

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0900b4

    .line 1001
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_0
    :goto_2
    return-void

    .line 995
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1001
    .restart local v0    # "description":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09007e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1003
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public animateBadge(ZIJZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "duration"    # I
    .param p3, "delay"    # J
    .param p5, "animated"    # Z

    .prologue
    .line 923
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 924
    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 1
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .prologue
    .line 1065
    if-nez p1, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1069
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method protected animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V
    .locals 17
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .param p2, "addedAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v7

    .line 1074
    .local v7, "preIconSize":I
    int-to-float v10, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1075
    .local v4, "iconScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    div-float v8, v10, v11

    .line 1076
    .local v8, "titleScale":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1077
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v5, v10

    .line 1079
    .local v5, "iconTransitionY":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    add-int/2addr v10, v7

    .line 1080
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 1082
    .local v9, "titleTransitionY":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1083
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1084
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1085
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v5, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1086
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1083
    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1087
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1089
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1090
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    .line 1091
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1092
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1089
    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1093
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1095
    if-eqz p2, :cond_0

    .line 1096
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1099
    :cond_0
    const-wide/16 v10, 0x12c

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1100
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1101
    return-void
.end method

.method public animateTitleView(ZIJZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "duration"    # I
    .param p3, "delay"    # J
    .param p5, "animated"    # Z

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 929
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    .line 409
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "promiseStateChanged"    # Z

    .prologue
    .line 412
    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "IconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFromApplicationInfo - start GetLive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 416
    const-string v1, "IconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFromApplicationInfo - end GetLive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 420
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 423
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    .line 425
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 427
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    const-string v1, "apps"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    .line 430
    :cond_2
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 376
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "promiseStateChanged"    # Z

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1}, Lcom/android/launcher3/common/view/LiveIconManager;->applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 394
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    .line 395
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 397
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->enableShortcutIconToTitle()V

    .line 402
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    const-string v2, "home"

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    .line 405
    :cond_1
    return-void

    .line 383
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "IconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFromShortcutInfo - start GetLive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    const-string v2, "IconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFromShortcutInfo - end GetLive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_4

    .line 389
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 391
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method protected applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 368
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 369
    const/4 v1, 0x1

    .line 371
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public applyState(Z)V
    .locals 5
    .param p1, "promiseStateChanged"    # Z

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 674
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    .line 675
    .local v1, "isPromise":Z
    if-eqz v1, :cond_2

    const/16 v4, 0x8

    .line 676
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getInstallProgress()I

    move-result v3

    .line 679
    .local v3, "progressLevel":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 681
    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v4, :cond_3

    .line 682
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .line 688
    .local v2, "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->setLevel(I)Z

    .line 689
    if-eqz p1, :cond_0

    .line 690
    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 694
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "isPromise":Z
    .end local v2    # "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    .end local v3    # "progressLevel":I
    :cond_0
    return-void

    .line 677
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v1    # "isPromise":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    goto :goto_0

    .line 684
    .restart local v3    # "progressLevel":I
    :cond_3
    new-instance v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 685
    .restart local v2    # "preloadDrawable":Lcom/android/launcher3/common/drawable/PreloadIconDrawable;
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public applyStyle()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 211
    .local v1, "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 216
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    .line 217
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getLineCount()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 220
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    .line 221
    .local v0, "contentTop":I
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 223
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 226
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 231
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 233
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    .line 234
    .local v3, "margin":I
    sub-int v4, v0, v3

    .line 235
    .local v4, "topMargin":I
    if-ltz v4, :cond_5

    .end local v4    # "topMargin":I
    :goto_1
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 236
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_6

    .line 237
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 244
    .end local v3    # "margin":I
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 245
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_4

    .line 247
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    .line 248
    .restart local v3    # "margin":I
    sub-int v4, v0, v3

    .line 249
    .restart local v4    # "topMargin":I
    if-ltz v4, :cond_7

    .end local v4    # "topMargin":I
    :goto_3
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 250
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_8

    .line 251
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 258
    .end local v3    # "margin":I
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 261
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .restart local v3    # "margin":I
    .restart local v4    # "topMargin":I
    :cond_5
    move v4, v5

    .line 235
    goto :goto_1

    .line 239
    .end local v4    # "topMargin":I
    :cond_6
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .restart local v4    # "topMargin":I
    :cond_7
    move v4, v5

    .line 249
    goto :goto_3

    .line 253
    .end local v4    # "topMargin":I
    :cond_8
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 666
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 668
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 669
    return-void
.end method

.method public changeTextColorForBg(Z)V
    .locals 8
    .param p1, "whiteBg"    # Z

    .prologue
    .line 954
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    .line 955
    .local v2, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 956
    const/4 v0, 0x1

    .line 957
    .local v0, "followThemeColor":Z
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 958
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 959
    :cond_0
    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    .line 961
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, p0, p1, v0}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Lcom/android/launcher3/common/view/IconView;ZZ)V

    .line 963
    .end local v0    # "followThemeColor":Z
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-void

    .line 959
    .restart local v0    # "followThemeColor":Z
    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decorateViewComponent()V
    .locals 9

    .prologue
    const v8, 0x1ffffff

    const/4 v7, 0x0

    .line 337
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    .line 338
    .local v2, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v3

    .line 339
    .local v3, "titleColor":I
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v4

    .line 340
    .local v4, "titleHighlightColor":I
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v5

    .line 341
    .local v5, "titleShadowColor":I
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 342
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TITLE_BACKGROUND:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 345
    :cond_1
    if-eq v3, v8, :cond_2

    .line 346
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/IconView;->setTextColor(I)V

    .line 348
    :cond_2
    if-eq v4, v8, :cond_3

    .line 349
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 351
    :cond_3
    if-eq v5, v8, :cond_6

    .line 352
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDx()F

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getShadowDy()F

    move-result v8

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    .line 358
    :cond_4
    :goto_0
    const v6, 0x7f110091

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    .local v0, "badge":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    .line 360
    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v1

    .line 361
    .local v1, "badgeFontColor":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    .end local v1    # "badgeFontColor":I
    :cond_5
    return-void

    .line 354
    .end local v0    # "badge":Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {p0, v7, v7, v7, v6}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public disableShortcutIconToTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1225
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1226
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1228
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1229
    const-string v1, "\u00a0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 1232
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->drawTextBackground(Landroid/graphics/Canvas;)V

    .line 577
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 579
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawTextBackground(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 593
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 594
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v3, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPadding:I

    .line 595
    .local v3, "extraPadding":I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v4, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPaddingBottom:I

    .line 597
    .local v4, "extraPaddingBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 598
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 599
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLineHeight()I

    move-result v16

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    add-int v1, v15, v4

    .line 600
    .local v1, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v15

    if-le v1, v15, :cond_0

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v1

    .line 604
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 605
    .local v6, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 606
    .local v12, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .line 608
    .local v10, "start":I
    const/4 v9, 0x0

    .line 609
    .local v9, "maxWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 610
    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 611
    .local v2, "end":I
    invoke-virtual {v12, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 612
    .local v11, "subString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v14, v15

    .line 613
    .local v14, "width":I
    if-ge v9, v14, :cond_1

    .line 614
    move v9, v14

    .line 616
    :cond_1
    move v10, v2

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "end":I
    .end local v11    # "subString":Ljava/lang/String;
    .end local v14    # "width":I
    :cond_2
    add-int v14, v9, v3

    .line 620
    .restart local v14    # "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    if-eqz v15, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    add-int v14, v15, v3

    .line 624
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_4

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v14

    .line 627
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v14

    div-int/lit8 v7, v15, 0x2

    .line 629
    .local v7, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    add-int v16, v7, v14

    move/from16 v0, v16

    invoke-virtual {v15, v7, v13, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    .end local v1    # "bottom":I
    .end local v3    # "extraPadding":I
    .end local v4    # "extraPaddingBottom":I
    .end local v5    # "i":I
    .end local v6    # "layout":Landroid/text/Layout;
    .end local v7    # "left":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "maxWidth":I
    .end local v10    # "start":I
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "top":I
    .end local v14    # "width":I
    :cond_5
    return-void
.end method

.method public enableShortcutIconToTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1214
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1215
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0099

    .line 1216
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1215
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1217
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1218
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "title":Ljava/lang/String;
    const-string v1, "\\s+"

    const-string v2, "\u00a0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    .line 1222
    return-void
.end method

.method protected getBadgeBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->isGreyIcon()Z

    move-result v2

    .line 890
    .local v2, "isGrey":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    .line 891
    .local v1, "isEasyMode":Z
    const/4 v0, 0x0

    .line 892
    .local v0, "badgeBgDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    .line 893
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_2

    .line 894
    iget-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    if-nez v3, :cond_0

    .line 895
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_0

    .line 897
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    .line 907
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 908
    if-eqz v1, :cond_4

    .line 909
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 914
    :cond_1
    :goto_1
    return-object v0

    .line 901
    :cond_2
    if-eqz v1, :cond_3

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .end local v0    # "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;)V

    .line 501
    .restart local v0    # "animation":Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    :cond_0
    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCountBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDrawablePadding()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDisplay()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    return v0
.end method

.method public getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .locals 3

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 303
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v1, 0x0

    .line 305
    .local v1, "iconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    packed-switch v2, :pswitch_data_0

    .line 321
    :goto_0
    return-object v1

    .line 307
    :pswitch_0
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 308
    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 311
    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    .line 314
    goto :goto_0

    .line 317
    :pswitch_3
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    return v0
.end method

.method public getIconVew()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeepShortcuts()Z
    .locals 2

    .prologue
    .line 1238
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isGreyIcon()Z
    .locals 2

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method public isMarkToRemove()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0
    .param p1, "tobeRemove"    # Z

    .prologue
    .line 1205
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    .line 1206
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 639
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    .line 640
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 649
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 650
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 172
    const v0, 0x7f11001d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f11001e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f11008d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f110091

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    .line 177
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010e

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 180
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    :cond_0
    const v0, 0x7f11008f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/launcher3/common/view/IconView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/view/IconView$1;-><init>(Lcom/android/launcher3/common/view/IconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    :cond_1
    sget v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 205
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/view/IconView;->setClipToPadding(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->decorateViewComponent()V

    .line 207
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 507
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 514
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 509
    .restart local v0    # "result":Z
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p0}, Lcom/android/launcher3/Utilities;->startActivityTouchDown(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1113
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1115
    .local v0, "handled":Z
    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 1116
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1117
    const/4 v0, 0x1

    .line 1119
    .end local v0    # "handled":Z
    :cond_1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1124
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongKeyHelper:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->postCheckForLongKey()V

    .line 1126
    const/4 v0, 0x1

    .line 1129
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    .line 271
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 272
    return-void
.end method

.method public onLiveIconRefresh()V
    .locals 5

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 746
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {v1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 751
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 750
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 754
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 756
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache;->getSDCardBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 755
    invoke-static {v2, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 761
    .local v0, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 758
    .end local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :cond_2
    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {v2, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 759
    .restart local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    .line 521
    const/4 v1, 0x1

    .line 568
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 526
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 528
    const/4 v1, 0x1

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 532
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 534
    :pswitch_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .line 536
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_4

    .line 537
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateDown()V

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 548
    :pswitch_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 549
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_6

    .line 550
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    .line 551
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    .line 554
    :cond_6
    iget-boolean v2, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v2, :cond_7

    .line 555
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    .line 558
    :cond_7
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .line 559
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 563
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    invoke-static {p0, v2, v3, v4}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchOutofIconArea(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1168
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    .line 1169
    .local v2, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v5

    .line 1173
    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float v0, v7, v8

    .line 1174
    .local v0, "expandTouchArea":F
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v4, v7, v0

    .line 1175
    .local v4, "right":F
    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v1, v7, v0

    .line 1177
    .local v1, "left":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v7, v7, v1

    if-ltz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v7, v7, v4

    if-gtz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 1178
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    :cond_2
    move v3, v6

    .line 1180
    .local v3, "result":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_7

    .line 1182
    :cond_3
    if-eqz v3, :cond_0

    .line 1183
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v5, :cond_4

    .line 1184
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    .line 1187
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v5, :cond_5

    .line 1188
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    .line 1190
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move v5, v6

    .line 1191
    goto :goto_0

    .end local v3    # "result":Z
    :cond_6
    move v3, v5

    .line 1178
    goto :goto_1

    .restart local v3    # "result":Z
    :cond_7
    move v5, v3

    .line 1196
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 644
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 645
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 774
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 776
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 777
    :cond_0
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 783
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 785
    :cond_2
    return-void

    .line 779
    .restart local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 780
    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public reapplyItemInfoFromIconCache(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 793
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 795
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 800
    :goto_0
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 802
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, "folderIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 808
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    .line 810
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 797
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 798
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    .line 797
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 836
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 837
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v6

    .line 838
    .local v6, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v9

    .line 839
    .local v7, "multiSelectMode":Z
    :goto_0
    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v8, :cond_7

    .line 840
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 841
    .local v4, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 842
    .local v0, "badge":I
    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_0

    .line 843
    const/16 v0, 0x3e7

    .line 846
    :cond_0
    if-ne v0, v9, :cond_5

    .line 847
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f090077

    .line 848
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 847
    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 855
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "badgeCount":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, "currentLanguage":Ljava/lang/String;
    const-string v8, "ar"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "fa"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 858
    :cond_1
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 863
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getBadgeBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 864
    .local v1, "badgeBgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 865
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 867
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    .line 869
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    .end local v0    # "badge":I
    .end local v1    # "badgeBgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "badgeCount":Ljava/lang/String;
    .end local v3    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v6    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .end local v7    # "multiSelectMode":Z
    :cond_3
    :goto_3
    return-void

    .restart local v6    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_4
    move v7, v10

    .line 838
    goto/16 :goto_0

    .line 850
    .restart local v0    # "badge":I
    .restart local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v7    # "multiSelectMode":Z
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090078

    .line 851
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    .line 850
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 860
    .restart local v2    # "badgeCount":Ljava/lang/String;
    .restart local v3    # "currentLanguage":Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 871
    .end local v0    # "badge":I
    .end local v2    # "badgeCount":Ljava/lang/String;
    .end local v3    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 874
    .local v5, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    .line 875
    if-eqz v7, :cond_9

    .line 876
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 877
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0900b4

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 878
    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 876
    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 877
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f09007e

    .line 878
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 880
    :cond_9
    iget-object v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 434
    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 436
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache;->getSDCardBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    .line 435
    invoke-static {v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 442
    .local v0, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 444
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 448
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->setTag(Ljava/lang/Object;)V

    .line 451
    iget-boolean v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    .line 452
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    .line 455
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/view/IconView;->applyState(Z)V

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 460
    return-void

    .line 438
    .end local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :cond_4
    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {p3, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 439
    .restart local v0    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 767
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 769
    :cond_0
    return-void
.end method

.method public setDisableAlphaOnPress(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    .line 933
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 734
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    :cond_0
    return-object p1
.end method

.method public setIconDisplay(I)V
    .locals 1
    .param p1, "iconDisplay"    # I

    .prologue
    .line 325
    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-ne v0, p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iput p1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressTimeout"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 475
    return-void
.end method

.method protected setShadow()V
    .locals 5

    .prologue
    .line 697
    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 700
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 703
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 662
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 479
    if-eqz p1, :cond_1

    .line 480
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->ignoreCheckItemInfo:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 482
    .local v0, "isAppItem":Z
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p1

    .line 483
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 486
    .end local v0    # "isAppItem":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 487
    return-void

    .line 480
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 658
    return-void
.end method

.method public setTitleViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method protected updateBadgeLayout()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 275
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->mBadgeCount:I

    if-eqz v8, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v2

    .line 278
    .local v2, "contentTop":I
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v0

    .line 281
    .local v0, "cellWidth":I
    if-gtz v0, :cond_1

    .line 299
    .end local v0    # "cellWidth":I
    .end local v2    # "contentTop":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0    # "cellWidth":I
    .restart local v2    # "contentTop":I
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v8, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v8, v0, v8

    div-int/lit8 v1, v8, 0x2

    .line 285
    .local v1, "contentRight":I
    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    sget v10, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    mul-float/2addr v8, v10

    float-to-int v5, v8

    .line 287
    .local v5, "margin":I
    sub-int v7, v2, v5

    .line 288
    .local v7, "topMargin":I
    sub-int v6, v1, v5

    .line 290
    .local v6, "rightMargin":I
    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_3

    .line 291
    if-ltz v6, :cond_2

    .end local v6    # "rightMargin":I
    :goto_1
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 295
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 296
    .local v3, "defaultTopMargin":I
    if-lt v7, v3, :cond_5

    .end local v7    # "topMargin":I
    :goto_3
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .end local v3    # "defaultTopMargin":I
    .restart local v6    # "rightMargin":I
    .restart local v7    # "topMargin":I
    :cond_2
    move v6, v9

    .line 291
    goto :goto_1

    .line 293
    :cond_3
    if-ltz v6, :cond_4

    .end local v6    # "rightMargin":I
    :goto_4
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .restart local v6    # "rightMargin":I
    :cond_4
    move v6, v9

    goto :goto_4

    .end local v6    # "rightMargin":I
    .restart local v3    # "defaultTopMargin":I
    :cond_5
    move v7, v3

    .line 296
    goto :goto_3
.end method

.method public updateCheckBox(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 966
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    .line 967
    return-void
.end method

.method public updateCheckBox(ZZ)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 975
    .local v7, "tag":Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    .line 979
    :cond_2
    if-eqz v7, :cond_3

    .line 980
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 984
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x64

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    .line 986
    if-eqz p1, :cond_4

    const/16 v0, 0xc8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    .line 989
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 990
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconView;->updateContentDescription(Z)V

    goto :goto_0

    .line 982
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 986
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_4
    const/16 v0, 0x12c

    goto :goto_2
.end method

.method public updateCountBadge(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "extraCount"    # I

    .prologue
    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    .line 1109
    return-void
.end method

.method public updateCountBadge(ZIZ)V
    .locals 9
    .param p1, "visible"    # Z
    .param p2, "extraCount"    # I
    .param p3, "animate"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1134
    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 1138
    :cond_0
    if-eqz p1, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppCount()I

    move-result v0

    add-int v7, v0, p2

    .line 1140
    .local v7, "count":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    .line 1141
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 1142
    .local v8, "currentLanguage":Ljava/lang/String;
    const-string v0, "ar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    .line 1147
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1150
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1151
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    .end local v7    # "count":I
    .end local v8    # "currentLanguage":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 1157
    return-void

    .line 1145
    .restart local v7    # "count":I
    .restart local v8    # "currentLanguage":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    goto :goto_0

    .line 1153
    .end local v7    # "count":I
    .end local v8    # "currentLanguage":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    goto :goto_1
.end method

.method public updateCountBadge(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    .line 1105
    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->cancel()V

    .line 818
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 822
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-boolean v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 823
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    .line 824
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    .line 833
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/model/PackageItemInfo;

    if-eqz v1, :cond_1

    .line 827
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/PackageItemInfo;

    .line 828
    .local v0, "info":Lcom/android/launcher3/common/model/PackageItemInfo;
    iget-boolean v1, v0, Lcom/android/launcher3/common/model/PackageItemInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 829
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    .line 830
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    goto :goto_0
.end method
