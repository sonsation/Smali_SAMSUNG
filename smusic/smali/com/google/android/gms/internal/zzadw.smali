.class public Lcom/google/android/gms/internal/zzadw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzadw$zze;,
        Lcom/google/android/gms/internal/zzadw$zza;,
        Lcom/google/android/gms/internal/zzadw$zzg;
    }
.end annotation


# direct methods
.method public static zzo(Lcom/google/android/gms/internal/zzai$zza;)Lcom/google/android/gms/internal/zzai$zza;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/zzai$zza;->type:I

    iput v0, v1, Lcom/google/android/gms/internal/zzai$zza;->type:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzxc:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/zzai$zza;->zzxc:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    :cond_0
    return-object v1
.end method
