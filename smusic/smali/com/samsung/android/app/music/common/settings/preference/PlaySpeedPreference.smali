.class public Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;
.super Landroid/preference/Preference;
.source "PlaySpeedPreference.java"


# static fields
.field private static final DEFAULT_SPEED:F = 1.0f

.field private static final INCREMENT:F = 0.1f

.field private static final MAX_PLAY_SPEED_INDEX:I = 0xf

.field private static final MAX_SPEED:F = 2.0f

.field private static final MIN_SPEED:F = 0.5f


# instance fields
.field private mLastProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;I)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getPlaySpeed(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;Landroid/view/View;Landroid/widget/TextView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->updatePlaySpeedInternal(Landroid/view/View;Landroid/widget/TextView;F)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getPlaySpeedText(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mLastProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getPlaySpeed(I)F
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    int-to-float v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    return v0
.end method

.method private getPlaySpeedText(F)Ljava/lang/String;
    .locals 6
    .param p1, "playSpeed"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 163
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProgress(F)I
    .locals 2
    .param p1, "playSpeed"    # F

    .prologue
    .line 159
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 147
    check-cast v1, Landroid/view/ViewGroup;

    .line 148
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 149
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private updatePlaySpeedInternal(Landroid/view/View;Landroid/widget/TextView;F)V
    .locals 4
    .param p1, "playSpeedSeekBar"    # Landroid/view/View;
    .param p2, "playSpeedText"    # Landroid/widget/TextView;
    .param p3, "playSpeed"    # F

    .prologue
    .line 169
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getPlaySpeedText(F)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "strPlaySpeed":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 171
    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getSettingsPlaySpeed()F

    move-result v0

    .line 85
    .local v0, "playSpeed":F
    :goto_0
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getProgress(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->updatePlaySpeedInternal(Landroid/view/View;Landroid/widget/TextView;F)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;-><init>(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;-><init>(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 138
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 142
    return-void

    .line 82
    .end local v0    # "playSpeed":F
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "playSpeed":F
    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 67
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 68
    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0401e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public updatePlaySpeed(F)V
    .locals 2
    .param p1, "playSpeed"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
