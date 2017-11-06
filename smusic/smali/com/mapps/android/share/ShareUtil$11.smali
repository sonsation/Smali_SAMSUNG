.class Lcom/mapps/android/share/ShareUtil$11;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$media_type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$11;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$11;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/mapps/android/share/ShareUtil$11;->val$media_type:I

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$11;->val$codeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$11;->val$handler:Landroid/os/Handler;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$11;)Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$11;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public onReqeustConfComplete()V
    .locals 7

    .prologue
    .line 450
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$11$1;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$11;->val$ctx:Landroid/content/Context;

    iget v3, p0, Lcom/mapps/android/share/ShareUtil$11;->val$media_type:I

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$11;->val$codeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapps/android/share/ShareUtil$11;->val$handler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/ShareUtil$11$1;-><init>(Lcom/mapps/android/share/ShareUtil$11;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 458
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 459
    return-void
.end method
