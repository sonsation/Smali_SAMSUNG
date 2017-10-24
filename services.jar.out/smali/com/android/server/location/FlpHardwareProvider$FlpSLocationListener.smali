.class Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
.super Lcom/samsung/android/location/ISLocationListener$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlpSLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 2
    .param p1, "locations"    # [Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "FlpHardwareProvider.mSLocationListener onLocationAvailable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap22(Lcom/android/server/location/FlpHardwareProvider;[Landroid/location/Location;)V

    .line 199
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 0
    .param p1, "arg0"    # Landroid/location/Location;
    .param p2, "arg1"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    return-void
.end method
