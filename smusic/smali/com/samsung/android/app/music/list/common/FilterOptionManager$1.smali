.class Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;
.super Ljava/lang/Object;
.source "FilterOptionManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "itemTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$000(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result v0

    .line 83
    .local v0, "prevFilterOption":I
    sparse-switch p2, :sswitch_data_0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$000(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$000(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$100(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$300(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$200(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$000(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$400(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->restartListLoader()V

    .line 121
    :cond_0
    return-void

    .line 85
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 91
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 94
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 97
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 100
    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 103
    :sswitch_6
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 106
    :sswitch_7
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 109
    :sswitch_8
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 112
    :sswitch_9
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;->this$0:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01bc -> :sswitch_9
        0x7f0a01bd -> :sswitch_0
        0x7f0a01be -> :sswitch_3
        0x7f0a01bf -> :sswitch_4
        0x7f0a01c0 -> :sswitch_2
        0x7f0a01c1 -> :sswitch_1
        0x7f0a045b -> :sswitch_5
        0x7f0a045c -> :sswitch_6
        0x7f0a0487 -> :sswitch_8
        0x7f0a04ae -> :sswitch_7
    .end sparse-switch
.end method
