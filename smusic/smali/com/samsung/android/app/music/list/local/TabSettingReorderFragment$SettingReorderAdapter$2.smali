.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;
.super Ljava/lang/Object;
.source "TabSettingReorderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

.field final synthetic val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->access$200(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->startReorder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 409
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
