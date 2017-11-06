.class public final Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
.source "SeslPreferenceScreen.java"


# static fields
.field private static final HUGE_FONT_FIRST:I = 0x7

.field private static final HUGE_FONT_FOURTH:I = 0xa

.field private static final HUGE_FONT_SECOND:I = 0x8

.field private static final HUGE_FONT_THIRD:I = 0x9

.field private static final mTextSizeIds:[I


# instance fields
.field private mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

.field private mIsChangedPressedItem:Z

.field private mIsCheckedSwitch:Z

.field private mIsNeedClick:Z

.field private mIsPassedActionMove:Z

.field private mIsRTL:Z

.field private mIsUsingTouchListener:Z

.field private mLocationTouchDownX:F

.field private mMovedDeltaX:F

.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mScaledTouchSlop:I

.field private mShouldUseGeneratedIds:Z

.field private pressedPostion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_list_primary_larger_text_size_first:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_list_primary_larger_text_size_second:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_list_primary_larger_text_size_third:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_list_primary_larger_text_size_fourth:I

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mTextSizeIds:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 120
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 103
    iput v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mLocationTouchDownX:F

    .line 104
    iput v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mMovedDeltaX:F

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->pressedPostion:I

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsCheckedSwitch:Z

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsChangedPressedItem:Z

    .line 108
    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mScaledTouchSlop:I

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsNeedClick:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsPassedActionMove:Z

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsUsingTouchListener:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mIsRTL:Z

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->setTitleFontSize()V

    .line 124
    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getOnNavigateToScreenListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    .line 133
    .local v0, "listener":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V

    goto :goto_0
.end method

.method public setShouldUseGeneratedIds(Z)V
    .locals 2
    .param p1, "shouldUseGeneratedIds"    # Z

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 172
    return-void
.end method

.method public setTitleFontSize()V
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_FONT_SIZE()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "fontSize":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mLargerFontLevel:I

    .line 180
    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mLargerFontLevel:I

    packed-switch v2, :pswitch_data_0

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_list_primary_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mTitleLargerTextSize:I

    .line 191
    :goto_0
    return-void

    .line 185
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mTextSizeIds:[I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mLargerFontLevel:I

    add-int/lit8 v4, v4, -0x7

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldUseGeneratedIds()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
