.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;
.super Ljava/lang/Object;
.source "MyInfoHeader.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fragment:Landroid/app/Fragment;

.field private final onClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private rootView:Landroid/view/View;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field private userStatus:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->userStatus:I

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->fragment:Landroid/app/Fragment;

    .line 40
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->onClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->initLayout()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->onClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->context:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040197

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->rootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->rootView:Landroid/view/View;

    const v1, 0x7f120130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView1:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->rootView:Landroid/view/View;

    const v1, 0x7f120131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView2:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->rootView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public getUserStatus()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->userStatus:I

    return v0
.end method

.method public updateHeader()V
    .locals 5

    .prologue
    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v3}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 69
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    const v1, 0x7f0a03fc

    .line 70
    .local v1, "resId":I
    const/4 v0, 0x0

    .line 71
    .local v0, "displaySA":Z
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 91
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->userStatus:I

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    if-eqz v0, :cond_1

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView2:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView2:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_1
    return-void

    .line 75
    :pswitch_0
    const v1, 0x7f0a03fd

    .line 76
    goto :goto_0

    .line 79
    :pswitch_1
    const v1, 0x7f0a03fc

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    const v1, 0x7f0a03f9

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_3
    const v1, 0x7f0a03fa

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->textView2:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
