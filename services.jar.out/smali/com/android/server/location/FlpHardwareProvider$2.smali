.class Lcom/android/server/location/FlpHardwareProvider$2;
.super Landroid/location/IFusedGeofenceHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/location/IFusedGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 1
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap9(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 605
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public modifyGeofenceOptions(IIIIII)V
    .locals 7
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/location/FlpHardwareProvider;->-wrap14(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V

    .line 630
    return-void
.end method

.method public pauseMonitoringGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap15(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 615
    return-void
.end method

.method public removeGeofences([I)V
    .locals 1
    .param p1, "geofenceIds"    # [I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap16(Lcom/android/server/location/FlpHardwareProvider;[I)V

    .line 610
    return-void
.end method

.method public resumeMonitoringGeofence(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;II)V

    .line 620
    return-void
.end method
