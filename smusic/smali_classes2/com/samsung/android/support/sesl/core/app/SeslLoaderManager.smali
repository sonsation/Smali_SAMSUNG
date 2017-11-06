.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
.super Ljava/lang/Object;
.source "SeslLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    .line 179
    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getLoader(I)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation
.end method
