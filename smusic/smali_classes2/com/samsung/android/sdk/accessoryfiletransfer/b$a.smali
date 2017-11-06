.class final Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    return-void
.end method


# virtual methods
.method final a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a:Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    return-object v0
.end method
