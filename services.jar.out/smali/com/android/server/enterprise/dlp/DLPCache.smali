.class public Lcom/android/server/enterprise/dlp/DLPCache;
.super Ljava/lang/Object;
.source "DLPCache.java"


# instance fields
.field public auditCreate:Z

.field public auditExpired:Z

.field public auditOpen:Z

.field public auditRename:Z

.field public auditUnauthorized:Z

.field public isActivated:Z

.field public mWhitelistedPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    .line 21
    return-void
.end method
