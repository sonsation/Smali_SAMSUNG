.class Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimerSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/TimerSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAdapter"
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

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;-><init>()V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->selectedIndex:I

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_0
    return-object p2

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;

    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->selectedIndex:I

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->selectedIndex:I

    return-void
.end method
