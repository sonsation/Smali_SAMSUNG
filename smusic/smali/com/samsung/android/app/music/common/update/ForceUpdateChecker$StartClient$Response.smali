.class Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StartClient$Response;
.super Ljava/lang/Object;
.source "ForceUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$StartClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Response"
.end annotation


# static fields
.field private static final FORCE_UPDATE_VERSION:Ljava/lang/String; = "forceUpdateVersion"

.field private static final PARTNER_APP_VERSION:Ljava/lang/String; = "partnerAppVersion"

.field private static final SHOP_ID:Ljava/lang/String; = "shopId"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
