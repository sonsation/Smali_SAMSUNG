.class public final Lcom/google/android/gms/internal/zzlz;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzlz;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbrf:I

.field public zzbrg:I

.field private zzcuy:Ljava/lang/String;

.field public zzcuz:I

.field public zzcva:I

.field public zzcvb:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuy:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlz;->zzcuy:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlz;->zzcuy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzlz;->zzcuz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzlz;->zzbrf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzlz;->zzbrg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzlz;->zzcva:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzlz;->zzcvb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlz;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlz;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuz:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuz:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->zzbp(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrf:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrf:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->zzbq(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrg:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrg:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->zzbr(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcva:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcva:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->zzbs(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcvb:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcvb:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->zzbt(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlz;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzg;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzlz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz;->zza(Lcom/google/android/gms/internal/zzlz;)V

    return-void
.end method

.method public zzbp(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzlz;->zzcuz:I

    return-void
.end method

.method public zzbq(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzlz;->zzbrf:I

    return-void
.end method

.method public zzbr(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzlz;->zzbrg:I

    return-void
.end method

.method public zzbs(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzlz;->zzcva:I

    return-void
.end method

.method public zzbt(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzlz;->zzcvb:I

    return-void
.end method

.method public zzxn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcuz:I

    return v0
.end method

.method public zzxo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrf:I

    return v0
.end method

.method public zzxp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzbrg:I

    return v0
.end method

.method public zzxq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcva:I

    return v0
.end method

.method public zzxr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlz;->zzcvb:I

    return v0
.end method
