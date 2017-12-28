.class Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;
.super Ljava/io/IOException;
.source "LauncherBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidBackupException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bf2e87d9bce62baL


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;->this$0:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    .line 1339
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;->this$0:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    .line 1335
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1336
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;
    .param p2, "x1"    # Ljava/lang/Throwable;
    .param p3, "x2"    # Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;)V

    return-void
.end method
