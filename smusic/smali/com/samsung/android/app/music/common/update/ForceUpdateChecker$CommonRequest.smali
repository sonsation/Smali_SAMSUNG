.class Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$CommonRequest;
.super Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$Common;
.source "ForceUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommonRequest"
.end annotation


# static fields
.field static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field static final SHOP_ID:Ljava/lang/String; = "shopId"

.field static final UNIQUE_ID:Ljava/lang/String; = "uniqueId"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$Common;-><init>()V

    return-void
.end method
