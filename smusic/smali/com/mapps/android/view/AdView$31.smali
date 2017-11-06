.class Lcom/mapps/android/view/AdView$31;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mezzo/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$FileName:Ljava/lang/String;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTSSP;

.field private final synthetic val$index:I

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;IILcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$31;->val$FileName:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdView$31;->val$type:I

    iput p4, p0, Lcom/mapps/android/view/AdView$31;->val$index:I

    iput-object p5, p0, Lcom/mapps/android/view/AdView$31;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1072
    const/4 v3, 0x1

    .line 1074
    .local v3, "isError":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->val$FileName:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v2, "fileinputStream":Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 1076
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mapps/android/view/AdView;->access$52(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V

    .line 1077
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1078
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1079
    .local v4, "msg":Landroid/os/Message;
    iget v5, p0, Lcom/mapps/android/view/AdView$31;->val$type:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 1080
    iget v5, p0, Lcom/mapps/android/view/AdView$31;->val$index:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 1081
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v5, v5, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    const/4 v3, 0x0

    .line 1089
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    .end local v2    # "fileinputStream":Ljava/io/FileInputStream;
    :goto_1
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v5, v5, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1094
    if-eqz v3, :cond_2

    .line 1095
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v5, v5, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    :goto_2
    return-void

    .line 1084
    .restart local v2    # "fileinputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->val$FileName:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v0, "dfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1090
    .end local v0    # "dfile":Ljava/io/File;
    .end local v2    # "fileinputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1097
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1098
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1099
    iget-object v5, p0, Lcom/mapps/android/view/AdView$31;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$87(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
