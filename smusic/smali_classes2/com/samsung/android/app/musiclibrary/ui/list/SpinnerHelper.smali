.class public Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SpinnerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final KEY_LAST_SELECTED_POSITION:Ljava/lang/String; = "key_last_selected"


# instance fields
.field private mEnabledStates:[Z

.field private mOnItemSelectedListener:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

.field private final mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private final mRoot:Landroid/view/View;

.field private mSelectedPosition:I

.field private final mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V
    .locals 3
    .param p2, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "recyclerViewFragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;)V
    .locals 4
    .param p2, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "recyclerViewFragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRoot:Landroid/view/View;

    .line 60
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->spinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    .line 62
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->blur_icon:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mEnabledStates:[Z

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mOnItemSelectedListener:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->hideKeyboardAndCursor()V

    return-void
.end method

.method private hideKeyboardAndCursor()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    .line 164
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 168
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const-string v0, "key_last_selected"

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    if-eqz p3, :cond_0

    .line 135
    const-string v0, "key_last_selected"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    .line 137
    :cond_0
    return-void
.end method

.method public varargs setDropDownItems([I)V
    .locals 7
    .param p1, "itemTextIds"    # [I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 76
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, p1, v4

    .line 78
    .local v1, "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "id":I
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    .line 81
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_spinner_item:I

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;Landroid/content/Context;ILjava/util/List;)V

    .line 97
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mEnabledStates:[Z

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mEnabledStates:[Z

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([ZZ)V

    .line 101
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;[I)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 117
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setSelection(I)V

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mEnabledStates:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mEnabledStates:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mOnItemSelectedListener:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

    .line 141
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->mSpinner:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setSelection(I)V

    .line 147
    :cond_0
    return-void
.end method
