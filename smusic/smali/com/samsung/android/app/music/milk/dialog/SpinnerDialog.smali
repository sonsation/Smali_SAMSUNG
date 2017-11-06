.class public Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;
.super Landroid/app/DialogFragment;
.source "SpinnerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SpinnerDialog"


# instance fields
.field private listAdapter:Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

.field private posHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listener:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listAdapter:Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    return-object v0
.end method

.method private makeHashMap(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "spinnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    .line 180
    .local v1, "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    iget v2, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    :cond_2
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;I)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;
    .locals 3
    .param p1, "selectedCusorIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;",
            ">;I)",
            "Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;-><init>()V

    .line 50
    .local v1, "dialog":Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "listItem"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    const-string/jumbo v2, "selectIndex"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f035d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    .local v0, "ret":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 62
    const v1, 0x7f0400e5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->updateAttribute(Landroid/app/Dialog;)V

    .line 65
    const v1, 0x7f1202b2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listView:Landroid/widget/ListView;

    .line 66
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 76
    const-string v4, "listItem"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->makeHashMap(Ljava/util/ArrayList;)V

    .line 80
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listAdapter:Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    .line 81
    const-string/jumbo v4, "selectIndex"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, "selectedIndex":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listAdapter:Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;->setSelection(I)V

    .line 83
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listAdapter:Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "position":I
    const-string v4, "SpinnerDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreateView : selectedIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->posHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 97
    :cond_0
    const-string v4, "SpinnerDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreateView : position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 100
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;>;"
    .end local v2    # "position":I
    .end local v3    # "selectedIndex":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 125
    return-void
.end method

.method public setListener(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->listener:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    .line 170
    return-void
.end method

.method protected updateAttribute(Landroid/app/Dialog;)V
    .locals 12
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 129
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 131
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 134
    .local v5, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x10102eb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v5, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d039d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int v4, v9, v10

    .line 141
    .local v4, "topMargin":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d05e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v2, v4, v9

    .line 143
    .local v2, "heightMargin":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v6

    .line 147
    .local v6, "uiType":I
    const/4 v7, 0x0

    .line 149
    .local v7, "width":I
    if-nez v6, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d05f0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 155
    :goto_0
    if-ltz v2, :cond_0

    .line 156
    sub-int v9, v1, v2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    :cond_0
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 159
    const/16 v9, 0x33

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    const/4 v9, 0x0

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 161
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d039c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 164
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 165
    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    return-void

    .line 152
    :cond_1
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v9, 0x2

    goto :goto_0
.end method
