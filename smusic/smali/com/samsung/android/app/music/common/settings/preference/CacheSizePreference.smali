.class public Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;
.super Landroid/preference/Preference;
.source "CacheSizePreference.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CacheSizePreference"


# instance fields
.field private mLoading:Landroid/app/ProgressDialog;

.field private mValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mLoading:Landroid/app/ProgressDialog;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mLoading:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mLoading:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0243

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mLoading:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getValueString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getMaxStreamingCacheSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v0

    .line 102
    .local v0, "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    const/4 v1, 0x0

    .line 104
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    const-string v2, "CacheSizePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheSizeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$3;->$SwitchMap$com$samsung$android$app$music$milk$MilkConstants$CacheSizeType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_0
    return-object v1

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a023d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_0
    const-string v2, "CacheSizePreference"

    const-string v3, "CacheSizeType null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->clearCache(Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;-><init>(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    const v1, 0x7f12010d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mValue:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getValueString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v1, 0x7f12010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, "delete":Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$1;-><init>(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
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
    .line 60
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 61
    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setValue()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->mValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "CacheSizePreference"

    const-string v1, "CacheSize Value null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
