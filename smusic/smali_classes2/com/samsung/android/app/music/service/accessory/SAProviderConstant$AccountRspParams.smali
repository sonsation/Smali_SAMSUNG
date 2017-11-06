.class Lcom/samsung/android/app/music/service/accessory/SAProviderConstant$AccountRspParams;
.super Lcom/samsung/android/app/music/service/accessory/SAProviderConstant$BaseParams;
.source "SAProvicerConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/SAProviderConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountRspParams"
.end annotation


# static fields
.field static final ACCESS_TOKEN:Ljava/lang/String; = "token"

.field static final EMAIL:Ljava/lang/String; = "email"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProviderConstant$BaseParams;-><init>()V

    return-void
.end method
