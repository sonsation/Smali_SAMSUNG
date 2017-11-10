.class Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/ListSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolutionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0a026c

    const v6, 0x7f0a0246

    const/4 v5, 0x1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;-><init>()V

    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    const v2, 0x7f10003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->resolution:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->resolution:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_1
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public setSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    return-void
.end method
