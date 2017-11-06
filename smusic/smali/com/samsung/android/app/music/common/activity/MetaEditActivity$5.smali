.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1600(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 329
    return-void
.end method
