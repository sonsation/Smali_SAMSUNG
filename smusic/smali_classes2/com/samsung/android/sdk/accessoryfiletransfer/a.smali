.class public final Lcom/samsung/android/sdk/accessoryfiletransfer/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private b:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->c:Landroid/os/HandlerThread;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    return-void
.end method


# virtual methods
.method final a()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object v0
.end method

.method final a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-void
.end method

.method final a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    return-void
.end method

.method final b()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    return-object v0
.end method

.method final c()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method final d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method final e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
