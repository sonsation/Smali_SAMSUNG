.class Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllowedDevice"
.end annotation


# instance fields
.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->mMac:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->mName:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$AllowedDevice;->mName:Ljava/lang/String;

    return-object v0
.end method
