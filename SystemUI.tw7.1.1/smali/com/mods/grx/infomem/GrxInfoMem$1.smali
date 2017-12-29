.class Lcom/mods/grx/infomem/GrxInfoMem$1;
.super Ljava/lang/Object;
.source "GrxInfoMem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mods/grx/infomem/GrxInfoMem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mods/grx/infomem/GrxInfoMem;


# direct methods
.method constructor <init>(Lcom/mods/grx/infomem/GrxInfoMem;)V
    .locals 0

    iput-object p1, p0, Lcom/mods/grx/infomem/GrxInfoMem$1;->this$0:Lcom/mods/grx/infomem/GrxInfoMem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mods/grx/infomem/GrxInfoMem$1;->this$0:Lcom/mods/grx/infomem/GrxInfoMem;

    invoke-virtual {v0}, Lcom/mods/grx/infomem/GrxInfoMem;->leer_mem_info()V

    return-void
.end method
