.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
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
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletedParsing(I)V
    .locals 8
    .param p1, "resultCode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "data":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "extra_uri_string"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$000()Landroid/util/LruCache;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    const-string v4, "Current file doesn\'t support edit."

    const v5, 0x7f0a00c3

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$100(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;I)V

    .line 126
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v3, -0x2

    if-ne p1, v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    const-string v4, "IO Error."

    const v5, 0x7f0a00ba

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$100(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 106
    const-string v3, "MetaEditor"

    const-string v4, "Non-tagged file."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 108
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$300(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->setEnabledDoneButton(Z)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$400(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/MetaEditConstants;->SUPPORTED_META_TYPES:Ljava/util/List;

    .line 112
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->getEncodingIfUnified(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 114
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v3

    .line 116
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$500()Ljava/util/List;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 123
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$600(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$300(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->setEnabledDoneButton(Z)V

    goto :goto_0

    .line 118
    :cond_6
    const-string v3, "UTF-16"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v3

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$500()Ljava/util/List;

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 121
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1
.end method
