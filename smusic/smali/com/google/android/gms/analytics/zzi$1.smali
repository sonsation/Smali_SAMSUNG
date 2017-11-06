.class Lcom/google/android/gms/analytics/zzi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/zzi;->zze(Lcom/google/android/gms/analytics/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcto:Lcom/google/android/gms/analytics/zze;

.field final synthetic zzctp:Lcom/google/android/gms/analytics/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi$1;->zzctp:Lcom/google/android/gms/analytics/zzi;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzi$1;->zzcto:Lcom/google/android/gms/analytics/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi$1;->zzcto:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzwm()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzi$1;->zzcto:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi$1;->zzctp:Lcom/google/android/gms/analytics/zzi;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzi;->zza(Lcom/google/android/gms/analytics/zzi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzj;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzi$1;->zzcto:Lcom/google/android/gms/analytics/zze;

    invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/zzj;->zza(Lcom/google/android/gms/analytics/zze;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi$1;->zzctp:Lcom/google/android/gms/analytics/zzi;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzi$1;->zzcto:Lcom/google/android/gms/analytics/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zza(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V

    return-void
.end method
