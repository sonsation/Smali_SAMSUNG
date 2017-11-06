.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;
.super Ljava/lang/Object;
.source "PlayerContent.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Key;
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;->mBundle:Landroid/os/Bundle;

    .line 22
    return-void
.end method

.method public static obtain(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getQuality()J
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;->mBundle:Landroid/os/Bundle;

    const-string v1, "content_quality"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
