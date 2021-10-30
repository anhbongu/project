@if ($errors->any())
    <div id="spinOut" class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif


<!-- //error -->
@if(session()->has('error'))
    <div id="spinOut" class="alert alert-danger">
        {{ session()->get('error') }}
    </div>
@endif

<!-- success -->
@if(session()->has('success'))
    <div id="spinOut" class="alert alert-primary">
        {{ session()->get('success') }}
    </div>
@endif
<style>
   #spinOut{
    position: absolute;
    z-index: 99;
    right: 150px;
    top: 80px;
    width: 50%;
   } 

</style>
<script>
    $(document).ready(function(){
       $("#spinOut").fadeOut(5000);
    });
</script>
