.class final enum Lcom/google/android/gms/tagmanager/zzci$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/tagmanager/zzci$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum awT:Lcom/google/android/gms/tagmanager/zzci$zza;

.field public static final enum awU:Lcom/google/android/gms/tagmanager/zzci$zza;

.field public static final enum awV:Lcom/google/android/gms/tagmanager/zzci$zza;

.field private static final synthetic awW:[Lcom/google/android/gms/tagmanager/zzci$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzci$zza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzci$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->awT:Lcom/google/android/gms/tagmanager/zzci$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzci$zza;

    const-string v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/zzci$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->awU:Lcom/google/android/gms/tagmanager/zzci$zza;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzci$zza;

    const-string v1, "CONTAINER_DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/zzci$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->awV:Lcom/google/android/gms/tagmanager/zzci$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/tagmanager/zzci$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->awT:Lcom/google/android/gms/tagmanager/zzci$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->awU:Lcom/google/android/gms/tagmanager/zzci$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->awV:Lcom/google/android/gms/tagmanager/zzci$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->awW:[Lcom/google/android/gms/tagmanager/zzci$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/tagmanager/zzci$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->awW:[Lcom/google/android/gms/tagmanager/zzci$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/zzci$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/tagmanager/zzci$zza;

    return-object v0
.end method
