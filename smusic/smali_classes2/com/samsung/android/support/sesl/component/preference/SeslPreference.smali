.class public Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
.super Ljava/lang/Object;
.source "SeslPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/support/sesl/component/preference/SeslPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mColorPrimaryDark:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mIsSummaryColorPrimaryDark:Z

.field private mKey:Ljava/lang/String;

.field private mLargerFontLevel:I

.field private mLayoutResId:I

.field private mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTextColorSecondary:Landroid/content/res/ColorStateList;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLargerTextSize:I

.field private mTitleRes:I

.field private mViewId:I

.field private mVisible:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 357
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    .line 117
    iput v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mViewId:I

    .line 130
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mEnabled:Z

    .line 131
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSelectable:Z

    .line 133
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPersistent:Z

    .line 136
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyMet:Z

    .line 137
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mParentDependencyMet:Z

    .line 138
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mVisible:Z

    .line 143
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mCanRecycleLayout:Z

    .line 144
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIsSummaryColorPrimaryDark:Z

    .line 151
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mShouldDisableView:Z

    .line 153
    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLayoutResId:I

    .line 162
    new-instance v3, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 255
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    .line 257
    sget-object v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_icon:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIconResId:I

    .line 263
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_key:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    .line 266
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    .line 269
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_summary:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    .line 272
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_order:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    .line 275
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_fragment:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mFragment:Ljava/lang/String;

    .line 278
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_layout:I

    sget v4, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLayoutResId:I

    .line 281
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_widgetLayout:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mWidgetLayoutResId:I

    .line 284
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_enabled:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mEnabled:Z

    .line 287
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_selectable:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSelectable:Z

    .line 290
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_persistent:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPersistent:Z

    .line 293
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_dependency:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    .line 296
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_defaultValue:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_defaultValue:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    .line 302
    :cond_0
    :goto_0
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_shouldDisableView:I

    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_shouldDisableView:I

    .line 303
    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/core/content/res/SeslTypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mShouldDisableView:Z

    .line 306
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 309
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 310
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010038

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 311
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_1

    .line 312
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    .line 315
    :cond_1
    sget v3, Lcom/samsung/android/support/sesl/R$color;->sesl_preference_secondary_text_user_setting_light:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    .line 316
    return-void

    .line 298
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_defaultValue:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_defaultValue:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    .line 1411
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1413
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1418
    :cond_1
    :goto_0
    return-void

    .line 1416
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private getSummaryColorToColorPrimaryDark()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIsSummaryColorPrimaryDark:Z

    return v0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    .line 1231
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    if-eqz v0, :cond_1

    .line 1232
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->registerDependent(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    goto :goto_0

    .line 1234
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onDependencyChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V

    .line 1283
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 592
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 594
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 595
    check-cast v1, Landroid/view/ViewGroup;

    .line 596
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 597
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 596
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 600
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->getInstance()Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1444
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    .line 1242
    .local v0, "oldDependency":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    if-eqz v0, :cond_0

    .line 1243
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->unregisterDependent(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 1246
    .end local v0    # "oldDependency":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1297
    :cond_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)I
    .locals 2
    .param p1, "another"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1118
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    iget v1, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1120
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    iget v1, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1130
    :goto_0
    return v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1123
    const/4 v0, 0x0

    goto :goto_0

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1125
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1127
    const/4 v0, -0x1

    goto :goto_0

    .line 1130
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    check-cast p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->compareTo(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1783
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1784
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 1785
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1786
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1787
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1792
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1729
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 1730
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1731
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1732
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1735
    :cond_0
    if-eqz v0, :cond_1

    .line 1736
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1739
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    const/4 v0, 0x0

    .line 1263
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1691
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1692
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1694
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1695
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1698
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1702
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 882
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1669
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1625
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    if-nez v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    .line 1106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitleRes:I

    return v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasRTL()Z
    .locals 1

    .prologue
    .line 1846
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPersistent:Z

    return v0
.end method

.method isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1851
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSelectable:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 1151
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependents:Ljava/util/List;

    .line 1309
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    if-nez v0, :cond_1

    .line 1317
    :cond_0
    return-void

    .line 1313
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1314
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1315
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onDependencyChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V

    .line 1314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 1162
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->registerDependency()V

    .line 1214
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    .line 1182
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1183
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mId:J

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchSetInitialValue()V

    .line 1187
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    .param p2, "id"    # J
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1195
    iput-wide p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mId:J

    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mHasId:Z

    .line 1198
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mHasId:Z

    .line 1202
    return-void

    .line 1200
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mHasId:Z

    throw v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V
    .locals 12
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 510
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    iget v10, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mViewId:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 513
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 514
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 516
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 517
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLargerFontLevel:I

    const/4 v10, 0x6

    if-le v7, v10, :cond_0

    instance-of v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceCategory;

    if-nez v7, :cond_0

    .line 520
    iget v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitleLargerTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 523
    :cond_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 534
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 536
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 537
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getSummaryColorToColorPrimaryDark()Z

    move-result v7

    if-nez v7, :cond_2

    instance-of v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;

    if-eqz v7, :cond_c

    .line 540
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 541
    const-string v7, "nhnh"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mColorPrimaryDark : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_3
    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    const v7, 0x1020006

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 554
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_7

    .line 555
    iget v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIconResId:I

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 559
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 560
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    move v7, v8

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :cond_7
    sget v7, Lcom/samsung/android/support/sesl/R$id;->icon_frame:I

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "imageFrame":Landroid/view/View;
    if-nez v0, :cond_8

    .line 568
    const v7, 0x102003e

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    :cond_8
    if-eqz v0, :cond_9

    .line 571
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    :goto_4
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_9
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mShouldDisableView:Z

    if-eqz v7, :cond_10

    .line 575
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isEnabled()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 580
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isSelectable()Z

    move-result v2

    .line 581
    .local v2, "selectable":Z
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 582
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    .line 584
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 585
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 586
    return-void

    .line 525
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selectable":Z
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    instance-of v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceCategory;

    if-eqz v7, :cond_b

    .line 526
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 529
    :cond_b
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 542
    .end local v5    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_3

    .line 543
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 544
    const-string v7, "nhnh"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTextColorSecondary : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 549
    :cond_d
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .end local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_e
    move v7, v9

    .line 563
    goto :goto_3

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_f
    move v8, v9

    .line 571
    goto :goto_4

    .line 577
    :cond_10
    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public onDependencyChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1327
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyMet:Z

    .line 1330
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 1332
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 1334
    :cond_0
    return-void

    .line 1327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->unregisterDependency()V

    .line 1224
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1817
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1077
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1344
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mParentDependencyMet:Z

    .line 1347
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 1349
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 1351
    :cond_0
    return-void

    .line 1344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->unregisterDependency()V

    .line 1395
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 1806
    sget-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting SeslPreference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mBaseMethodCalled:Z

    .line 1755
    sget-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1438
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onClick()V

    .line 1050
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1054
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v2

    .line 1055
    .local v2, "preferenceManager":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    if-eqz v2, :cond_3

    .line 1057
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1058
    .local v1, "listener":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1063
    .end local v1    # "listener":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1065
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->performClick()V

    .line 1034
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1639
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1640
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1650
    :goto_0
    return v2

    .line 1645
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1646
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1647
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1650
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1551
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1562
    :goto_0
    return v1

    .line 1557
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1558
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1559
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1562
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1507
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1518
    :goto_0
    return v1

    .line 1513
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1514
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1515
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1518
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1595
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1596
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1606
    :goto_0
    return v1

    .line 1601
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1602
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1603
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1606
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1460
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1462
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1472
    :goto_0
    return v1

    .line 1467
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1468
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1469
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1472
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslPreference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mRequiresKey:Z

    .line 931
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1767
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1768
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1714
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1715
    return-void
.end method

.method public seslSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0
    .param p1, "color"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIsSummaryColorPrimaryDark:Z

    .line 772
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1406
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->unregisterDependency()V

    .line 1374
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mDependencyKey:Ljava/lang/String;

    .line 1375
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->registerDependency()V

    .line 1376
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 786
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mEnabled:Z

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 791
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 793
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mFragment:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIconResId:I

    .line 721
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 705
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 706
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIconResId:I

    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 710
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mIntent:Landroid/content/Intent;

    .line 394
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mKey:Ljava/lang/String;

    .line 903
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->requireKey()V

    .line 906
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLayoutResId:I

    .line 461
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    .line 1142
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnChangeListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeListener;

    .line 998
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOnClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceClickListener;

    .line 1017
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 616
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 617
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mOrder:I

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyHierarchyChanged()V

    .line 622
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPersistent:Z

    .line 975
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 811
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSelectable:Z

    .line 812
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 814
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mShouldDisableView:Z

    .line 838
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 839
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 763
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 749
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 750
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mSummary:Ljava/lang/CharSequence;

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 753
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 654
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitle:Ljava/lang/CharSequence;

    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyChanged()V

    .line 658
    :cond_2
    return-void
.end method

.method setTitleLargerTextSize(II)V
    .locals 0
    .param p1, "fontLevel"    # I
    .param p2, "textSize"    # I

    .prologue
    .line 692
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mLargerFontLevel:I

    .line 693
    iput p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mTitleLargerTextSize:I

    .line 694
    return-void
.end method

.method public setViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 642
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mViewId:I

    .line 643
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 859
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mVisible:Z

    .line 860
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 864
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 485
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mWidgetLayoutResId:I

    .line 486
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
