.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;
.super Ljava/lang/ThreadLocal;
.source "ArtworkKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;->initialValue()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    move-result-object v0

    return-object v0
.end method
