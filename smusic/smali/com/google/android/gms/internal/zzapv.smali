.class public abstract Lcom/google/android/gms/internal/zzapv;
.super Ljava/lang/Object;


# instance fields
.field protected volatile bjG:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return-void
.end method


# virtual methods
.method public aB()Lcom/google/android/gms/internal/zzapv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapv;

    return-object v0
.end method

.method public aL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->aM()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return v0
.end method

.method public aM()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->zzx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapv;->bjG:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapv;->aB()Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzapw;->zzg(Lcom/google/android/gms/internal/zzapv;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected zzx()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
