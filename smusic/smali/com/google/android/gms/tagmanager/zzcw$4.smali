.class Lcom/google/android/gms/tagmanager/zzcw$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcw;->zza(Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcv;)Lcom/google/android/gms/tagmanager/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axA:Lcom/google/android/gms/tagmanager/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcw$4;->axA:Lcom/google/android/gms/tagmanager/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzadw$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzadw$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzadw$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzadw$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcr;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzcgb()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzcgc()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcr;->zzcbz()Lcom/google/android/gms/tagmanager/zzcp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzcgb()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzchh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcr;->zzcca()Lcom/google/android/gms/tagmanager/zzcp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzcgc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadw$zze;->zzchi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
