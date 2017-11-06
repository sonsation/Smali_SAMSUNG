.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMessage"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 214
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;->mActivity:Landroid/app/Activity;

    .line 215
    return-void
.end method

.method static build(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 202
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 203
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 207
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getPositiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
