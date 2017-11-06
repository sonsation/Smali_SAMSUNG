.class Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StartClient$Request;
.super Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$CommonRequest;
.source "ForceUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StartClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$CommonRequest;-><init>()V

    return-void
.end method
