.class public final Lcom/google/android/gms/tagmanager/InstallReferrerReceiver;
.super Lcom/google/android/gms/analytics/CampaignTrackingReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzh(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzbe;->zzow(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/tagmanager/zzbe;->zzw(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected zzvv()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/analytics/CampaignTrackingService;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/tagmanager/InstallReferrerService;

    return-object v0
.end method
