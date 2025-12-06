        </main>
    </div> <!-- .dashboard -->
</div> <!-- .container -->

<script>
    function openModal(id){
        const m = document.getElementById(id);
        if(m) m.classList.add('active');
    }
    function closeModal(id){
        const m = document.getElementById(id);
        if(m) m.classList.remove('active');
    }
    document.querySelectorAll('.modal').forEach(m=>{
        m.addEventListener('click',e=>{
            if(e.target===m){ m.classList.remove('active'); }
        });
    });
</script>
</body>
</html>
