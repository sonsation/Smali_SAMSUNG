.class Lcom/google/android/gms/tagmanager/zzdb;
.super Lcom/google/android/gms/tagmanager/zzda;


# static fields
.field private static final axN:Ljava/lang/Object;

.field private static axZ:Lcom/google/android/gms/tagmanager/zzdb;


# instance fields
.field private axP:Lcom/google/android/gms/tagmanager/zzav;

.field private volatile axQ:Lcom/google/android/gms/tagmanager/zzat;

.field private axR:I

.field private axS:Z

.field private axT:Z

.field private axU:Z

.field private axV:Lcom/google/android/gms/tagmanager/zzaw;

.field private axY:Z

.field private connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzda;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axT:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axU:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzdb$1;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axV:Lcom/google/android/gms/tagmanager/zzaw;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axY:Z

    return-void
.end method

.method public static zzcdc()Lcom/google/android/gms/tagmanager/zzdb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzdb;)Lcom/google/android/gms/tagmanager/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axP:Lcom/google/android/gms/tagmanager/zzav;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axT:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axQ:Lcom/google/android/gms/tagmanager/zzat;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdb$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzdb$2;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzat;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
